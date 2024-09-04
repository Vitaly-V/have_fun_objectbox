import '../../../../objectbox.g.dart';
import '../models/models.dart';

class ContactDataSource {
  final Store store;
  late final Box<ContactModel> _contactBox;

  ContactDataSource(this.store) {
    _contactBox = store.box<ContactModel>();
  }

  Future<List<ContactModel>> getContacts({
    String query = '',
    bool isAscending = true,
  }) async {
    final lowerCaseQuery = query.toLowerCase();

    // Building the query based on whether there is a search term or not
    final queryBuilder = _contactBox.query((query.isNotEmpty
        ? (ContactModel_.firstName
                .contains(lowerCaseQuery, caseSensitive: false) |
            ContactModel_.lastName
                .contains(lowerCaseQuery, caseSensitive: false))
        : null));

    // Applying the sort order to the query
    queryBuilder.order(
      ContactModel_.firstName,
      flags: isAscending ? 0 : Order.descending,
    );

    return queryBuilder.build().find();
  }

  ContactModel addContact(ContactModel contact) {
    var id = _contactBox.put(contact);
    return _contactBox.get(id)!;
  }

  List<ContactModel> addContacts(List<ContactModel> contacts) {
    _contactBox.putMany(contacts);
    return _contactBox.getAll();
  }

  ContactModel updateContact(ContactModel contact, List<int> deletedAddressIds,
      List<int> deletedPhoneIds) {
    for (var addressId in deletedAddressIds) {
      store.box<AddressModel>().remove(addressId);
    }
    for (var phoneId in deletedPhoneIds) {
      store.box<PhoneModel>().remove(phoneId);
    }
    _contactBox.put(contact);
    return _contactBox.get(contact.id)!;
  }

  void deleteContact(int id) {
    _contactBox.remove(id);
  }

  List<ContactModel> searchContacts(String query, {required bool isAscending}) {
    final lowerCaseQuery = query.toLowerCase();

    // Building the search query
    final queryBuilder = _contactBox.query(
      ContactModel_.firstName.startsWith(lowerCaseQuery, caseSensitive: false) |
          ContactModel_.lastName
              .startsWith(lowerCaseQuery, caseSensitive: false),
    );

    // Applying sort order to the search query
    queryBuilder.order(
      ContactModel_.firstName,
      flags: isAscending ? 0 : Order.descending,
    );

    return queryBuilder.build().find();
  }
}
