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
      return Contact(
        contactID: contactJson['contactID'],
        firstName: contactJson['firstName'],
        lastName: contactJson['lastName'],
        phoneNumber: contactJson['phoneNumber'],
        streetAddress1: contactJson['streetAddress1'],
        streetAddress2: contactJson['streetAddress2'],
        city: contactJson['city'],
        state: contactJson['state'],
        zipCode: contactJson['zipCode'],
      );
    }).toList();

    await addContacts(contacts);
  }
}
