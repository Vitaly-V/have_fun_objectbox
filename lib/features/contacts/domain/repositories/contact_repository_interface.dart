import '../entities/entities.dart';

abstract class ContactRepositoryInterface {
  Future<List<Contact>> getContacts();
  Future<void> addContact(Contact contact);
  Future<void> addContacts(List<Contact> contacts);
  Future<void> updateContact(Contact contact);
  Future<void> deleteContact(int id);
  bool isEmpty();
  Future<void> importContactsIfFirstLaunch();
}
