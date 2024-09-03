import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    int? id,
    required String contactID,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String streetAddress1,
    required String streetAddress2,
    required String city,
    required String state,
    required String zipCode,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}
