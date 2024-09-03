import 'package:freezed_annotation/freezed_annotation.dart';
import 'address.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    int? id,
    required String contactID,
    required String firstName,
    required String lastName,
    required List<String> phoneNumbers, // Updated to support multiple phone numbers
    required List<Address> addresses,   // Updated to support multiple addresses
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}
