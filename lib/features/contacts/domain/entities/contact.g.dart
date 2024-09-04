// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactImpl _$$ContactImplFromJson(Map<String, dynamic> json) =>
    _$ContactImpl(
      id: (json['id'] as num?)?.toInt(),
      contactID: json['contactID'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phones: (json['phones'] as List<dynamic>)
          .map((e) => Phone.fromJson(e as Map<String, dynamic>))
          .toList(),
      addresses: (json['addresses'] as List<dynamic>)
          .map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ContactImplToJson(_$ContactImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contactID': instance.contactID,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phones': instance.phones,
      'addresses': instance.addresses,
    };
