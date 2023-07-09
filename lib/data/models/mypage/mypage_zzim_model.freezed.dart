// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mypage_zzim_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyPageZzimModel _$MyPageZzimModelFromJson(Map<String, dynamic> json) {
  return _MyPageZzimModel.fromJson(json);
}

/// @nodoc
mixin _$MyPageZzimModel {
  String? get name => throw _privateConstructorUsedError;
  String? get basicAddress => throw _privateConstructorUsedError;
  double? get avergeRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyPageZzimModelCopyWith<MyPageZzimModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPageZzimModelCopyWith<$Res> {
  factory $MyPageZzimModelCopyWith(
          MyPageZzimModel value, $Res Function(MyPageZzimModel) then) =
      _$MyPageZzimModelCopyWithImpl<$Res, MyPageZzimModel>;
  @useResult
  $Res call({String? name, String? basicAddress, double? avergeRating});
}

/// @nodoc
class _$MyPageZzimModelCopyWithImpl<$Res, $Val extends MyPageZzimModel>
    implements $MyPageZzimModelCopyWith<$Res> {
  _$MyPageZzimModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? basicAddress = freezed,
    Object? avergeRating = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      basicAddress: freezed == basicAddress
          ? _value.basicAddress
          : basicAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      avergeRating: freezed == avergeRating
          ? _value.avergeRating
          : avergeRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyPageZzimModelCopyWith<$Res>
    implements $MyPageZzimModelCopyWith<$Res> {
  factory _$$_MyPageZzimModelCopyWith(
          _$_MyPageZzimModel value, $Res Function(_$_MyPageZzimModel) then) =
      __$$_MyPageZzimModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? basicAddress, double? avergeRating});
}

/// @nodoc
class __$$_MyPageZzimModelCopyWithImpl<$Res>
    extends _$MyPageZzimModelCopyWithImpl<$Res, _$_MyPageZzimModel>
    implements _$$_MyPageZzimModelCopyWith<$Res> {
  __$$_MyPageZzimModelCopyWithImpl(
      _$_MyPageZzimModel _value, $Res Function(_$_MyPageZzimModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? basicAddress = freezed,
    Object? avergeRating = freezed,
  }) {
    return _then(_$_MyPageZzimModel(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == basicAddress
          ? _value.basicAddress
          : basicAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == avergeRating
          ? _value.avergeRating
          : avergeRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyPageZzimModel implements _MyPageZzimModel {
  _$_MyPageZzimModel(this.name, this.basicAddress, this.avergeRating);

  factory _$_MyPageZzimModel.fromJson(Map<String, dynamic> json) =>
      _$$_MyPageZzimModelFromJson(json);

  @override
  final String? name;
  @override
  final String? basicAddress;
  @override
  final double? avergeRating;

  @override
  String toString() {
    return 'MyPageZzimModel(name: $name, basicAddress: $basicAddress, avergeRating: $avergeRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyPageZzimModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.basicAddress, basicAddress) ||
                other.basicAddress == basicAddress) &&
            (identical(other.avergeRating, avergeRating) ||
                other.avergeRating == avergeRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, basicAddress, avergeRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyPageZzimModelCopyWith<_$_MyPageZzimModel> get copyWith =>
      __$$_MyPageZzimModelCopyWithImpl<_$_MyPageZzimModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyPageZzimModelToJson(
      this,
    );
  }
}

abstract class _MyPageZzimModel implements MyPageZzimModel {
  factory _MyPageZzimModel(final String? name, final String? basicAddress,
      final double? avergeRating) = _$_MyPageZzimModel;

  factory _MyPageZzimModel.fromJson(Map<String, dynamic> json) =
      _$_MyPageZzimModel.fromJson;

  @override
  String? get name;
  @override
  String? get basicAddress;
  @override
  double? get avergeRating;
  @override
  @JsonKey(ignore: true)
  _$$_MyPageZzimModelCopyWith<_$_MyPageZzimModel> get copyWith =>
      throw _privateConstructorUsedError;
}
