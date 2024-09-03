import '../../../../objectbox.g.dart';
import '../models/models.dart';

class ContactDataSource {
  final Store store;

  late final Box<ContactModel> _contactBox;

  ContactDataSource(this.store) {
    _contactBox = store.box<ContactModel>();
  }

  Future<List<ContactModel>> getContacts() async {
    return _contactBox.getAll();
  }

  Future<void> addContact(ContactModel contact) async {
    _contactBox.put(contact);
  }

  Future<void> addContacts(List<ContactModel> contacts) async {
    _contactBox.putMany(contacts);
  }

  Future<void> updateContact(ContactModel contact) async {
    _contactBox.put(contact);
  }

  Future<void> deleteContact(int id) async {
    _contactBox.remove(id);
  }

  bool isEmpty() {
    return _contactBox.isEmpty();
  }

  Future<List<ContactModel>> searchContacts(String query) async {
    final lowerCaseQuery = query.toLowerCase();

    final queryBuilder = _contactBox.query(ContactModel_.firstName
            .contains(lowerCaseQuery, caseSensitive: false) |
        ContactModel_.lastName.contains(lowerCaseQuery, caseSensitive: false));

    return queryBuilder.build().find();
  }
}
