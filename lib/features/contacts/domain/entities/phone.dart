import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone.freezed.dart';
part 'phone.g.dart';

@freezed
class Phone with _$Phone {
  const factory Phone({
    int? id,
    required String number,
  }) = _Phone;

  factory Phone.fromJson(Map<String, dynamic> json) => _$PhoneFromJson(json);
}
