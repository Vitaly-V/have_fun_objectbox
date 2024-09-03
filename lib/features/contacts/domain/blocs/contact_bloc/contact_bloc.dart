import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../entities/entities.dart';
import '../../repositories/repositories.dart';

part 'contact_event.dart';
part 'contact_state.dart';
part 'contact_bloc.freezed.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final ContactRepositoryInterface contactRepository;

  ContactBloc(this.contactRepository) : super(const ContactState()) {
    on<ContactsLoaded>(_onLoadContacts);
    on<ContactAdded>(_onAddContact);
    on<ContactUpdated>(_onUpdateContact);
    on<ContactDeleted>(_onDeleteContact);
    on<ContactSelected>(_onSelectContact);
  }

  Future<void> _onLoadContacts(
      ContactsLoaded event, Emitter<ContactState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    if (contactRepository.isEmpty()) {
      await contactRepository.importContactsIfFirstLaunch();
    }
    try {
      final contacts = await contactRepository.getContacts();
      emit(state.copyWith(contacts: contacts, isLoading: false));
    } catch (error) {
      emit(state.copyWith(isLoading: false, errorMessage: error.toString()));
    }
  }

  Future<void> _onAddContact(
      ContactAdded event, Emitter<ContactState> emit) async {
    try {
      emit(state.copyWith(isLoading: true, errorMessage: null));
      await contactRepository.addContact(event.contact);
      add(const ContactsLoaded());
    } catch (error) {
      emit(state.copyWith(isLoading: false, errorMessage: error.toString()));
    }
  }

  Future<void> _onUpdateContact(
      ContactUpdated event, Emitter<ContactState> emit) async {
    try {
      emit(state.copyWith(isLoading: true, errorMessage: null));
      await contactRepository.updateContact(event.contact);
      var updatedContacts = [...state.contacts].map((contact) {
        if (contact.id == event.contact.id) {
          return event.contact;
        }
        return contact;
      }).toList();
      emit(state.copyWith(
          isLoading: false, contacts: updatedContacts, contact: event.contact));
    } catch (error) {
      emit(state.copyWith(isLoading: false, errorMessage: error.toString()));
    }
  }

  Future<void> _onDeleteContact(
      ContactDeleted event, Emitter<ContactState> emit) async {
    try {
      emit(state.copyWith(isLoading: true, errorMessage: null));
      await contactRepository.deleteContact(event.id);
      var updatedContacts = [...state.contacts];
      updatedContacts.removeWhere((contact) => contact.id == event.id);
      emit(state.copyWith(
          contacts: updatedContacts, contact: null, isLoading: false));
    } catch (error) {
      emit(state.copyWith(isLoading: false, errorMessage: error.toString()));
    }
  }

  Future<void> _onSelectContact(
      ContactSelected event, Emitter<ContactState> emit) async {
      emit(state.copyWith(contact: event.contact));
  }
}
