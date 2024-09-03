import 'package:objectbox/objectbox.dart';
import 'package:uuid/uuid.dart';
import '../../domain/entities/contact.dart';

@Entity()
class ContactModel {
  @Id()
  int id;
  @Unique()
  @Index()
  String contactID;
  String firstName;
  String lastName;
  String phoneNumber;
  String streetAddress1;
  String streetAddress2;
  String city;
  String state;
  String zipCode;

  ContactModel({
    this.id = 0,
    String? contactID,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.streetAddress1,
    required this.streetAddress2,
    required this.city,
    required this.state,
    required this.zipCode,
  }) : contactID = contactID ?? const Uuid().v4();

  Contact toEntity() {
    return Contact(
      id: id,
      contactID: contactID,
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      streetAddress1: streetAddress1,
      streetAddress2: streetAddress2,
      city: city,
      state: state,
      zipCode: zipCode,
    );
  }

  static ContactModel fromEntity(Contact contact) {
    return ContactModel(
      id: contact.id ?? 0,
      contactID: contact.contactID,
      firstName: contact.firstName,
      lastName: contact.lastName,
      phoneNumber: contact.phoneNumber,
      streetAddress1: contact.streetAddress1,
      streetAddress2: contact.streetAddress2,
      city: contact.city,
      state: contact.state,
      zipCode: contact.zipCode,
    );
  }
}
