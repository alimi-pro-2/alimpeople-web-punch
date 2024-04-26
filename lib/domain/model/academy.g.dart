// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AcademyImpl _$$AcademyImplFromJson(Map<String, dynamic> json) =>
    _$AcademyImpl(
      countryCode: json['countryCode'] as String,
      createdTime:
          const DateTimeConverter().fromJson(json['createdTime'] as Timestamp),
      master: json['master'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$AcademyImplToJson(_$AcademyImpl instance) =>
    <String, dynamic>{
      'countryCode': instance.countryCode,
      'createdTime': const DateTimeConverter().toJson(instance.createdTime),
      'master': instance.master,
      'name': instance.name,
      'phone': instance.phone,
    };
