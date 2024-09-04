import 'dart:convert';
import 'package:flutter/services.dart';

import '../../domain/entities/entities.dart';
import '../data_sources/contact_data_source.dart';
import '../../domain/repositories/repositories.dart';
import '../models/models.dart';

class ContactRepository implements ContactRepositoryInterface {
  final ContactDataSource dataSource;

  ContactRepository(this.dataSource);

  @override
  List<Contact> getContacts({String query = '', bool isAscending = true}) {
    final contactModels =
        dataSource.searchContacts(query, isAscending: isAscending);
    return contactModels.map((model) => model.toEntity()).toList();
  }

  @override
  Contact addContact(Contact contact) {
    final model = ContactModel.fromEntity(contact);
    ContactModel addedModel = dataSource.addContact(model);
    return addedModel.toEntity();
  }

  @override
  List<Contact> addContacts(List<Contact> contacts) {
    final models =
        contacts.map((contact) => ContactModel.fromEntity(contact)).toList();
    final contactModels = dataSource.addContacts(models);
    return contactModels.map((model) => model.toEntity()).toList();
  }

  @override
  Contact updateContact(Contact contact) {
    final model = ContactModel.fromEntity(contact);
    ContactModel updatedContact = dataSource.updateContact(model);
    return updatedContact.toEntity();
  }

  @override
  Future<void> deleteContact(int id) async {
    dataSource.deleteContact(id);
  }

  @override
  Future<void> importContactsIfFirstLaunch() async {
    final String jsonString =
        await rootBundle.loadString('assets/contacts.json');
    final List<dynamic> jsonData = jsonDecode(jsonString);

    final List<Contact> contacts = jsonData.map((contactJson) {
      // Parse phone numbers
      final List<Phone> phones = (contactJson['phones'] != null)
          ? (contactJson['phones'] as List<dynamic>)
              .map((phoneJson) => Phone(number: phoneJson as String))
              .toList()
          : [
              if (contactJson['phoneNumber'] != null)
                Phone(number: contactJson['phoneNumber'] as String)
            ];

      // Parse addresses
      final List<Address> addresses = (contactJson['addresses'] != null)
          ? (contactJson['addresses'] as List<dynamic>)
              .map((addressJson) =>
                  Address.fromJson(addressJson as Map<String, dynamic>))
              .toList()
          : [
              Address(
                streetAddress1: contactJson['streetAddress1'] as String,
                streetAddress2: contactJson['streetAddress2'] as String,
                city: contactJson['city'] as String,
                state: contactJson['state'] as String,
                zipCode: contactJson['zipCode'] as String,
              )
            ];

      return Contact(
        id: contactJson['id'] as int?,
        contactID: contactJson['contactID'] as String,
        firstName: contactJson['firstName'] as String,
        lastName: contactJson['lastName'] as String,
        phones: phones,
        addresses: addresses,
      );
    }).toList();

    addContacts(contacts);
  }
}
