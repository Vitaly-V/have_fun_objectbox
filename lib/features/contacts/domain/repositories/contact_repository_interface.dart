import '../entities/entities.dart';

abstract class ContactRepositoryInterface {
  List<Contact> getContacts({String query, bool isAscending});
  Contact addContact(Contact contact);
  List<Contact> addContacts(List<Contact> contacts);
  Contact updateContact(Contact contact);
  void deleteContact(int id);
  Future<void> importContactsIfFirstLaunch();
}
