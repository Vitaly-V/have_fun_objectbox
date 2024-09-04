import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    int? id,
    required String contactID,
    required String firstName,
    required String lastName,
    required List<Phone> phones,
    required List<Address> addresses,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}
