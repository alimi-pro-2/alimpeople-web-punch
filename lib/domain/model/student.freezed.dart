// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Student _$StudentFromJson(Map<String, dynamic> json) {
  return _Student.fromJson(json);
}

/// @nodoc
mixin _$Student {
  @JsonKey(name: 'uid')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get parentsPhone1 => throw _privateConstructorUsedError;
  String? get parentsPhone2 => throw _privateConstructorUsedError;
  String? get parentsPhone3 => throw _privateConstructorUsedError;
  String get PIN => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentCopyWith<Student> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res, Student>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uid') String id,
      String name,
      String parentsPhone1,
      String? parentsPhone2,
      String? parentsPhone3,
      String PIN});
}

/// @nodoc
class _$StudentCopyWithImpl<$Res, $Val extends Student>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? parentsPhone1 = null,
    Object? parentsPhone2 = freezed,
    Object? parentsPhone3 = freezed,
    Object? PIN = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentsPhone1: null == parentsPhone1
          ? _value.parentsPhone1
          : parentsPhone1 // ignore: cast_nullable_to_non_nullable
              as String,
      parentsPhone2: freezed == parentsPhone2
          ? _value.parentsPhone2
          : parentsPhone2 // ignore: cast_nullable_to_non_nullable
              as String?,
      parentsPhone3: freezed == parentsPhone3
          ? _value.parentsPhone3
          : parentsPhone3 // ignore: cast_nullable_to_non_nullable
              as String?,
      PIN: null == PIN
          ? _value.PIN
          : PIN // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentImplCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$$StudentImplCopyWith(
          _$StudentImpl value, $Res Function(_$StudentImpl) then) =
      __$$StudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uid') String id,
      String name,
      String parentsPhone1,
      String? parentsPhone2,
      String? parentsPhone3,
      String PIN});
}

/// @nodoc
class __$$StudentImplCopyWithImpl<$Res>
    extends _$StudentCopyWithImpl<$Res, _$StudentImpl>
    implements _$$StudentImplCopyWith<$Res> {
  __$$StudentImplCopyWithImpl(
      _$StudentImpl _value, $Res Function(_$StudentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? parentsPhone1 = null,
    Object? parentsPhone2 = freezed,
    Object? parentsPhone3 = freezed,
    Object? PIN = null,
  }) {
    return _then(_$StudentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentsPhone1: null == parentsPhone1
          ? _value.parentsPhone1
          : parentsPhone1 // ignore: cast_nullable_to_non_nullable
              as String,
      parentsPhone2: freezed == parentsPhone2
          ? _value.parentsPhone2
          : parentsPhone2 // ignore: cast_nullable_to_non_nullable
              as String?,
      parentsPhone3: freezed == parentsPhone3
          ? _value.parentsPhone3
          : parentsPhone3 // ignore: cast_nullable_to_non_nullable
              as String?,
      PIN: null == PIN
          ? _value.PIN
          : PIN // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentImpl implements _Student {
  const _$StudentImpl(
      {@JsonKey(name: 'uid') required this.id,
      required this.name,
      required this.parentsPhone1,
      this.parentsPhone2,
      this.parentsPhone3,
      required this.PIN});

  factory _$StudentImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentImplFromJson(json);

  @override
  @JsonKey(name: 'uid')
  final String id;
  @override
  final String name;
  @override
  final String parentsPhone1;
  @override
  final String? parentsPhone2;
  @override
  final String? parentsPhone3;
  @override
  final String PIN;

  @override
  String toString() {
    return 'Student(id: $id, name: $name, parentsPhone1: $parentsPhone1, parentsPhone2: $parentsPhone2, parentsPhone3: $parentsPhone3, PIN: $PIN)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentsPhone1, parentsPhone1) ||
                other.parentsPhone1 == parentsPhone1) &&
            (identical(other.parentsPhone2, parentsPhone2) ||
                other.parentsPhone2 == parentsPhone2) &&
            (identical(other.parentsPhone3, parentsPhone3) ||
                other.parentsPhone3 == parentsPhone3) &&
            (identical(other.PIN, PIN) || other.PIN == PIN));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, parentsPhone1, parentsPhone2, parentsPhone3, PIN);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      __$$StudentImplCopyWithImpl<_$StudentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentImplToJson(
      this,
    );
  }
}

abstract class _Student implements Student {
  const factory _Student(
      {@JsonKey(name: 'uid') required final String id,
      required final String name,
      required final String parentsPhone1,
      final String? parentsPhone2,
      final String? parentsPhone3,
      required final String PIN}) = _$StudentImpl;

  factory _Student.fromJson(Map<String, dynamic> json) = _$StudentImpl.fromJson;

  @override
  @JsonKey(name: 'uid')
  String get id;
  @override
  String get name;
  @override
  String get parentsPhone1;
  @override
  String? get parentsPhone2;
  @override
  String? get parentsPhone3;
  @override
  String get PIN;
  @override
  @JsonKey(ignore: true)
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
