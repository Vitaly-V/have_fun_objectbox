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
  Future<List<Contact>> getContacts() async {
    var models = await dataSource.getContacts();
    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<void> addContact(Contact contact) async {
    var model = ContactModel.fromEntity(contact);
    await dataSource.addContact(model);
  }

  @override
  Future<void> addContacts(List<Contact> contacts) async {
    var models =
        contacts.map((contact) => ContactModel.fromEntity(contact)).toList();
    await dataSource.addContacts(models);
  }

  @override
  Future<void> updateContact(Contact contact) async {
    var model = ContactModel.fromEntity(contact);
    await dataSource.updateContact(model);
  }

  @override
  Future<void> deleteContact(int id) async {
    await dataSource.deleteContact(id);
  }

  @override
  bool isEmpty() {
    return dataSource.isEmpty();
  }

  @override
  Future<void> importContactsIfFirstLaunch() async {
    final String jsonString =
        await rootBundle.loadString('assets/contacts.json');
    final List<dynamic> jsonData = jsonDecode(jsonString);

    final List<Contact> contacts = jsonData.map((contactJson) {
      // Parse phone numbers
      List<String> phoneNumbers = [];
      if (contactJson['phoneNumbers'] != null) {
        phoneNumbers = List<String>.from(contactJson['phoneNumbers']);
      } else if (contactJson['phoneNumber'] != null) {
        phoneNumbers = [contactJson['phoneNumber']];
      }

      // Parse addresses
      List<Address> addresses = [];
      if (contactJson['addresses'] != null) {
        addresses = (contactJson['addresses'] as List<dynamic>)
            .map((addressJson) =>
                Address.fromJson(addressJson as Map<String, dynamic>))
            .toList();
      } else {
        // Handle cases where addresses are not provided in the new structure
        addresses = [
          Address(
            streetAddress1: contactJson['streetAddress1'] as String,
            streetAddress2: contactJson['streetAddress2'] as String,
            city: contactJson['city'] as String,
            state: contactJson['state'] as String,
            zipCode: contactJson['zipCode'] as String,
          )
        ];
      }

      // Create a Contact object with the transformed phoneNumbers and addresses
      return Contact(
        id: contactJson['id'] as int?,
        contactID: contactJson['contactID'] as String,
        firstName: contactJson['firstName'] as String,
        lastName: contactJson['lastName'] as String,
        phoneNumbers: phoneNumbers,
        addresses: addresses,
      );
    }).toList();

    await addContacts(contacts);
  }

  @override
  Future<List<Contact>> searchContacts(String query) async {
    final contactModels = await dataSource.searchContacts(query);
    return contactModels.map((model) => model.toEntity()).toList();
  }
}
