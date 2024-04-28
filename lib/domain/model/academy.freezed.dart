// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'academy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Academy _$AcademyFromJson(Map<String, dynamic> json) {
  return _Academy.fromJson(json);
}

/// @nodoc
mixin _$Academy {
  String get countryCode => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get createdTime => throw _privateConstructorUsedError;
  String get master => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AcademyCopyWith<Academy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcademyCopyWith<$Res> {
  factory $AcademyCopyWith(Academy value, $Res Function(Academy) then) =
      _$AcademyCopyWithImpl<$Res, Academy>;
  @useResult
  $Res call(
      {String countryCode,
      @DateTimeConverter() DateTime createdTime,
      String master,
      String name,
      String phone});
}

/// @nodoc
class _$AcademyCopyWithImpl<$Res, $Val extends Academy>
    implements $AcademyCopyWith<$Res> {
  _$AcademyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? createdTime = null,
    Object? master = null,
    Object? name = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      master: null == master
          ? _value.master
          : master // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcademyImplCopyWith<$Res> implements $AcademyCopyWith<$Res> {
  factory _$$AcademyImplCopyWith(
          _$AcademyImpl value, $Res Function(_$AcademyImpl) then) =
      __$$AcademyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String countryCode,
      @DateTimeConverter() DateTime createdTime,
      String master,
      String name,
      String phone});
}

/// @nodoc
class __$$AcademyImplCopyWithImpl<$Res>
    extends _$AcademyCopyWithImpl<$Res, _$AcademyImpl>
    implements _$$AcademyImplCopyWith<$Res> {
  __$$AcademyImplCopyWithImpl(
      _$AcademyImpl _value, $Res Function(_$AcademyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? createdTime = null,
    Object? master = null,
    Object? name = null,
    Object? phone = null,
  }) {
    return _then(_$AcademyImpl(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      master: null == master
          ? _value.master
          : master // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcademyImpl implements _Academy {
  const _$AcademyImpl(
      {required this.countryCode,
      @DateTimeConverter() required this.createdTime,
      required this.master,
      required this.name,
      required this.phone});

  factory _$AcademyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcademyImplFromJson(json);

  @override
  final String countryCode;
  @override
  @DateTimeConverter()
  final DateTime createdTime;
  @override
  final String master;
  @override
  final String name;
  @override
  final String phone;

  @override
  String toString() {
    return 'Academy(countryCode: $countryCode, createdTime: $createdTime, master: $master, name: $name, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcademyImpl &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.master, master) || other.master == master) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, countryCode, createdTime, master, name, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcademyImplCopyWith<_$AcademyImpl> get copyWith =>
      __$$AcademyImplCopyWithImpl<_$AcademyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcademyImplToJson(
      this,
    );
  }
}

abstract class _Academy implements Academy {
  const factory _Academy(
      {required final String countryCode,
      @DateTimeConverter() required final DateTime createdTime,
      required final String master,
      required final String name,
      required final String phone}) = _$AcademyImpl;

  factory _Academy.fromJson(Map<String, dynamic> json) = _$AcademyImpl.fromJson;

  @override
  String get countryCode;
  @override
  @DateTimeConverter()
  DateTime get createdTime;
  @override
  String get master;
  @override
  String get name;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$AcademyImplCopyWith<_$AcademyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
