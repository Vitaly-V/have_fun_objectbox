import 'package:objectbox/objectbox.dart';
import '../../domain/entities/entities.dart';
import 'contact_model.dart';

@Entity()
class AddressModel {
  @Id()
  int id;

  String streetAddress1;
  String streetAddress2;
  String city;
  String state;
  String zipCode;

  // ObjectBox relationship to ContactModel
  final contact = ToOne<ContactModel>();

  AddressModel({
    this.id = 0,
    required this.streetAddress1,
    required this.streetAddress2,
    required this.city,
    required this.state,
    required this.zipCode,
  });

  Address toEntity() {
    return Address(
      id: id,
      streetAddress1: streetAddress1,
      streetAddress2: streetAddress2,
      city: city,
      state: state,
      zipCode: zipCode,
    );
  }

  static AddressModel fromEntity(Address address) {
    return AddressModel(
      id: address.id ?? 0,
      streetAddress1: address.streetAddress1,
      streetAddress2: address.streetAddress2,
      city: address.city,
      state: address.state,
      zipCode: address.zipCode,
    );
  }
}
