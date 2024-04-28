// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      id: json['uid'] as String,
      name: json['name'] as String,
      parentsPhone1: json['parentsPhone1'] as String,
      parentsPhone2: json['parentsPhone2'] as String?,
      parentsPhone3: json['parentsPhone3'] as String?,
    );

Map<String, dynamic> _$$StudentImplToJson(_$StudentImpl instance) =>
    <String, dynamic>{
      'uid': instance.id,
      'name': instance.name,
      'parentsPhone1': instance.parentsPhone1,
      'parentsPhone2': instance.parentsPhone2,
      'parentsPhone3': instance.parentsPhone3,
    };
