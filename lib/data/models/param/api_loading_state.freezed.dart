// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_loading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiLoadingState _$ApiLoadingStateFromJson(Map<String, dynamic> json) {
  return _ApiLoadingState.fromJson(json);
}

/// @nodoc
mixin _$ApiLoadingState {
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiLoadingStateCopyWith<ApiLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiLoadingStateCopyWith<$Res> {
  factory $ApiLoadingStateCopyWith(
          ApiLoadingState value, $Res Function(ApiLoadingState) then) =
      _$ApiLoadingStateCopyWithImpl<$Res, ApiLoadingState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$ApiLoadingStateCopyWithImpl<$Res, $Val extends ApiLoadingState>
    implements $ApiLoadingStateCopyWith<$Res> {
  _$ApiLoadingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiLoadingStateCopyWith<$Res>
    implements $ApiLoadingStateCopyWith<$Res> {
  factory _$$_ApiLoadingStateCopyWith(
          _$_ApiLoadingState value, $Res Function(_$_ApiLoadingState) then) =
      __$$_ApiLoadingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_ApiLoadingStateCopyWithImpl<$Res>
    extends _$ApiLoadingStateCopyWithImpl<$Res, _$_ApiLoadingState>
    implements _$$_ApiLoadingStateCopyWith<$Res> {
  __$$_ApiLoadingStateCopyWithImpl(
      _$_ApiLoadingState _value, $Res Function(_$_ApiLoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_ApiLoadingState(
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiLoadingState implements _ApiLoadingState {
  _$_ApiLoadingState(this.isLoading);

  factory _$_ApiLoadingState.fromJson(Map<String, dynamic> json) =>
      _$$_ApiLoadingStateFromJson(json);

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ApiLoadingState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiLoadingState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiLoadingStateCopyWith<_$_ApiLoadingState> get copyWith =>
      __$$_ApiLoadingStateCopyWithImpl<_$_ApiLoadingState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiLoadingStateToJson(
      this,
    );
  }
}

abstract class _ApiLoadingState implements ApiLoadingState {
  factory _ApiLoadingState(final bool isLoading) = _$_ApiLoadingState;

  factory _ApiLoadingState.fromJson(Map<String, dynamic> json) =
      _$_ApiLoadingState.fromJson;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ApiLoadingStateCopyWith<_$_ApiLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}
