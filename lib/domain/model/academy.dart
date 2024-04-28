import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/mapper/date_time_converter.dart';

part 'academy.freezed.dart';

part 'academy.g.dart';

@freezed
class Academy with _$Academy {
  const factory Academy({
    required String countryCode,
    @DateTimeConverter() required DateTime createdTime,
    required String master,
    required String name,
    required String phone,
  }) = _Academy;

  factory Academy.fromJson(Map<String, Object?> json) =>
      _$AcademyFromJson(json);
}

