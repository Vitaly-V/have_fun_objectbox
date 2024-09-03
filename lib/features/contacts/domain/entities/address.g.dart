// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      streetAddress1: json['streetAddress1'] as String,
      streetAddress2: json['streetAddress2'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      zipCode: json['zipCode'] as String,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'streetAddress1': instance.streetAddress1,
      'streetAddress2': instance.streetAddress2,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
    };
