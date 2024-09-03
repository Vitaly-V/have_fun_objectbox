import 'package:objectbox/objectbox.dart';
import 'package:uuid/uuid.dart';
import '../../domain/entities/contact.dart';
import 'address_model.dart';

@Entity()
class ContactModel {
  @Id()
  int id;

  @Unique()
  @Index()
  String contactID;

  String firstName;
  String lastName;

  // Store phone numbers as a single comma-separated string
  String phoneNumbers;

  @Backlink()
  final addresses = ToMany<AddressModel>();

  ContactModel({
    this.id = 0,
    String? contactID,
    required this.firstName,
    required this.lastName,
    required this.phoneNumbers,
    List<AddressModel>? addresses,
  }) : contactID = contactID ?? const Uuid().v4() {
    if (addresses != null) {
      this.addresses.addAll(addresses);
    }
  }

  // Helper method to convert the stored string back into a list of phone numbers
  List<String> getPhoneNumbers() => phoneNumbers.split(',');

  Contact toEntity() {
    return Contact(
      id: id,
      contactID: contactID,
      firstName: firstName,
      lastName: lastName,
      phoneNumbers: getPhoneNumbers(),
      addresses:
          addresses.map((addressModel) => addressModel.toEntity()).toList(),
    );
  }

  static ContactModel fromEntity(Contact contact) {
    return ContactModel(
      id: contact.id ?? 0,
      contactID: contact.contactID,
      firstName: contact.firstName,
      lastName: contact.lastName,
      phoneNumbers:
          contact.phoneNumbers.join(','),
      addresses: contact.addresses
          .map((address) => AddressModel.fromEntity(address))
          .toList(),
    );
  }
}
