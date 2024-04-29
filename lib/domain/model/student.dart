import 'package:freezed_annotation/freezed_annotation.dart';

part 'student.freezed.dart';

part 'student.g.dart';

@freezed
class Student with _$Student {
  const factory Student({
    @JsonKey(name: 'uid') required String id,
    required String name,
    required String parentsPhone1,
    String? parentsPhone2,
    String? parentsPhone3,
    required String PIN,
  }) = _Student;

  factory Student.fromJson(Map<String, Object?> json) => _$StudentFromJson(json);


}