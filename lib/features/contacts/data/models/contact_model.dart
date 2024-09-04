import 'package:objectbox/objectbox.dart';
import 'package:uuid/uuid.dart';
import '../../domain/entities/contact.dart';
import 'address_model.dart';
import 'phone_model.dart';

@Entity()
class ContactModel {
  @Id()
  int id;

  @Unique()
  @Index()
  String contactID;

  String firstName;
  String lastName;

  // Backlink to related phone numbers and addresses
  @Backlink()
  final phones = ToMany<PhoneModel>();

  @Backlink()
  final addresses = ToMany<AddressModel>();

  ContactModel({
    this.id = 0,
    String? contactID,
    required this.firstName,
    required this.lastName,
    List<PhoneModel>? phones,
    List<AddressModel>? addresses,
  }) : contactID = contactID ?? const Uuid().v4() {
    if (phones != null) {
      this.phones.addAll(phones);
    }
    if (addresses != null) {
      this.addresses.addAll(addresses);
    }
  }

  Contact toEntity() {
    return Contact(
      id: id,
      contactID: contactID,
      firstName: firstName,
      lastName: lastName,
      phones: phones.map((phoneModel) => phoneModel.toEntity()).toList(),
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
      phones:
          contact.phones.map((phone) => PhoneModel.fromEntity(phone)).toList(),
      addresses: contact.addresses
          .map((address) => AddressModel.fromEntity(address))
          .toList(),
    );
  }
}
