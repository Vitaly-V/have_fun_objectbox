import 'package:shared_preferences/shared_preferences.dart';
// ignore: depend_on_referenced_packages
import 'package:stream_transform/stream_transform.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/core.dart';
import '../../entities/entities.dart';
import '../../repositories/repositories.dart';

part 'contact_event.dart';
part 'contact_state.dart';
part 'contact_bloc.freezed.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final ContactRepositoryInterface contactRepository;
  static const String dbInitializedKey = 'databaseInitialized';

  ContactBloc(this.contactRepository) : super(const ContactState()) {
    on<ContactsLoaded>(_onLoadContacts);
    on<ContactAdded>(_onAddContact);
    on<ContactUpdated>(_onUpdateContact);
    on<ContactDeleted>(_onDeleteContact);
    on<ContactSelected>(_onSelectContact);
    on<ContactCleared>(_onClearContact);
    on<ContactsSearched>(_onSearchContacts,
        transformer: debounce(const Duration(milliseconds: 300)));
  }

  Future<void> _onLoadContacts(
      ContactsLoaded event, Emitter<ContactState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      var isDatabaseInitialized = await _isDatabaseInitialized();
      if (!isDatabaseInitialized) {
        await contactRepository.importContactsIfFirstLaunch();
        _setDatabaseInitialized();
      }
      final contacts = contactRepository.getContacts(
          query: state.searchQuery, isAscending: event.isAscending);
      emit(state.copyWith(
          contacts: contacts,
          isLoading: false,
          isAscending: event.isAscending));
      AppLogger.logger
          .i('Contacts loaded and sorted, ascending: ${event.isAscending}');
    } catch (error) {
      emit(state.copyWith(isLoading: false, errorMessage: error.toString()));
      AppLogger.logger.e('Error loading and sorting contacts: $error');
    }
  }

  Future<void> _onAddContact(
      ContactAdded event, Emitter<ContactState> emit) async {
    try {
      emit(state.copyWith(isLoading: true, errorMessage: null, contact: null));
      contactRepository.addContact(event.contact);
      add(const ContactsLoaded());
      AppLogger.logger.i('Contact added: ${event.contact}');
    } catch (error) {
      emit(state.copyWith(isLoading: false, errorMessage: error.toString()));
      AppLogger.logger.e('Error adding contact: $error');
    }
  }

  Future<void> _onUpdateContact(
      ContactUpdated event, Emitter<ContactState> emit) async {
    try {
      // Start loading state
      emit(state.copyWith(isLoading: true, errorMessage: null));

      // Initialize lists to keep track of deleted entities
      List<int> deletedAddressIds = [];
      List<int> deletedPhoneIds = [];

      // Find addresses that are no longer in the updated contact
      state.contact?.addresses.forEach((existingAddress) {
        bool isAddressDeleted = event.contact.addresses
                .any((newAddress) => newAddress.id == existingAddress.id) ==
            false;
        if (isAddressDeleted && existingAddress.id != null) {
          deletedAddressIds.add(existingAddress.id!);
        }
      });

      // Find phones that are no longer in the updated contact
      state.contact?.phones.forEach((existingPhone) {
        bool isPhoneDeleted = event.contact.phones
                .any((newPhone) => newPhone.id == existingPhone.id) ==
            false;
        if (isPhoneDeleted && existingPhone.id != null) {
          deletedPhoneIds.add(existingPhone.id!);
        }
      });

      // Update contact and handle deletions
      var updatedContact = contactRepository.updateContact(
        event.contact,
        deletedAddressIds: deletedAddressIds,
        deletedPhoneIds: deletedPhoneIds,
      );

      // Update the contact list in state
      var updatedContacts = state.contacts.map((contact) {
        return contact.id == updatedContact.id ? updatedContact : contact;
      }).toList();

      // Emit the new state with the updated contact
      emit(state.copyWith(
        isLoading: false,
        contacts: updatedContacts,
        contact: updatedContact,
      ));

      AppLogger.logger.i('Contact updated: $updatedContact');
    } catch (error) {
      // Handle errors and emit the error state
      emit(state.copyWith(isLoading: false, errorMessage: error.toString()));
      AppLogger.logger.e('Error updating contact: $error');
    }
  }

  Future<void> _onDeleteContact(
      ContactDeleted event, Emitter<ContactState> emit) async {
    try {
      emit(state.copyWith(isLoading: true, errorMessage: null));
      contactRepository.deleteContact(event.id);
      var updatedContacts = [...state.contacts];
      updatedContacts.removeWhere((contact) => contact.id == event.id);
      emit(state.copyWith(
          contacts: updatedContacts, contact: null, isLoading: false));
      AppLogger.logger.i('Contact deleted: ID ${event.id}');
    } catch (error) {
      emit(state.copyWith(isLoading: false, errorMessage: error.toString()));
      AppLogger.logger.e('Error deleting contact: $error');
    }
  }

  Future<void> _onSelectContact(
      ContactSelected event, Emitter<ContactState> emit) async {
    emit(state.copyWith(contact: event.contact));
    AppLogger.logger.i(
        'Contact selected: ${event.contact.firstName} ${event.contact.lastName}');
  }

  Future<void> _onClearContact(
      ContactCleared event, Emitter<ContactState> emit) async {
    emit(state.copyWith(contact: null));
    AppLogger.logger.i('Contact cleared');
  }

  Future<void> _onSearchContacts(
      ContactsSearched event, Emitter<ContactState> emit) async {
    emit(state.copyWith(
        isLoading: true,
        errorMessage: null,
        contact: null,
        searchQuery: event.query));
    try {
      final searchResults = contactRepository.getContacts(
          query: event.query, isAscending: state.isAscending);
      emit(state.copyWith(contacts: searchResults, isLoading: false));
      AppLogger.logger.i('Search completed for query: ${event.query}');
    } catch (error) {
      emit(state.copyWith(isLoading: false, errorMessage: error.toString()));
      AppLogger.logger.e('Error searching contacts: $error');
    }
  }

  EventTransformer<E> debounce<E>(Duration duration) {
    return (events, mapper) => events.debounce(duration).switchMap(mapper);
  }

  // Check if the database has been initialized
  Future<bool> _isDatabaseInitialized() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(dbInitializedKey) ?? false;
  }

  // Set the database as initialized
  Future<void> _setDatabaseInitialized() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(dbInitializedKey, true);
  }
}
