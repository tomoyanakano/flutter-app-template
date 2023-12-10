// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'force_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForceUpdate _$ForceUpdateFromJson(Map<String, dynamic> json) {
  return _ForceUpdate.fromJson(json);
}

/// @nodoc
mixin _$ForceUpdate {
  String get forceUpdateThresholdVersion => throw _privateConstructorUsedError;
  bool get isForceUpdateEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForceUpdateCopyWith<ForceUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForceUpdateCopyWith<$Res> {
  factory $ForceUpdateCopyWith(
          ForceUpdate value, $Res Function(ForceUpdate) then) =
      _$ForceUpdateCopyWithImpl<$Res, ForceUpdate>;
  @useResult
  $Res call({String forceUpdateThresholdVersion, bool isForceUpdateEnabled});
}

/// @nodoc
class _$ForceUpdateCopyWithImpl<$Res, $Val extends ForceUpdate>
    implements $ForceUpdateCopyWith<$Res> {
  _$ForceUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forceUpdateThresholdVersion = null,
    Object? isForceUpdateEnabled = null,
  }) {
    return _then(_value.copyWith(
      forceUpdateThresholdVersion: null == forceUpdateThresholdVersion
          ? _value.forceUpdateThresholdVersion
          : forceUpdateThresholdVersion // ignore: cast_nullable_to_non_nullable
              as String,
      isForceUpdateEnabled: null == isForceUpdateEnabled
          ? _value.isForceUpdateEnabled
          : isForceUpdateEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForceUpdateImplCopyWith<$Res>
    implements $ForceUpdateCopyWith<$Res> {
  factory _$$ForceUpdateImplCopyWith(
          _$ForceUpdateImpl value, $Res Function(_$ForceUpdateImpl) then) =
      __$$ForceUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String forceUpdateThresholdVersion, bool isForceUpdateEnabled});
}

/// @nodoc
class __$$ForceUpdateImplCopyWithImpl<$Res>
    extends _$ForceUpdateCopyWithImpl<$Res, _$ForceUpdateImpl>
    implements _$$ForceUpdateImplCopyWith<$Res> {
  __$$ForceUpdateImplCopyWithImpl(
      _$ForceUpdateImpl _value, $Res Function(_$ForceUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forceUpdateThresholdVersion = null,
    Object? isForceUpdateEnabled = null,
  }) {
    return _then(_$ForceUpdateImpl(
      forceUpdateThresholdVersion: null == forceUpdateThresholdVersion
          ? _value.forceUpdateThresholdVersion
          : forceUpdateThresholdVersion // ignore: cast_nullable_to_non_nullable
              as String,
      isForceUpdateEnabled: null == isForceUpdateEnabled
          ? _value.isForceUpdateEnabled
          : isForceUpdateEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForceUpdateImpl implements _ForceUpdate {
  const _$ForceUpdateImpl(
      {required this.forceUpdateThresholdVersion,
      required this.isForceUpdateEnabled});

  factory _$ForceUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForceUpdateImplFromJson(json);

  @override
  final String forceUpdateThresholdVersion;
  @override
  final bool isForceUpdateEnabled;

  @override
  String toString() {
    return 'ForceUpdate(forceUpdateThresholdVersion: $forceUpdateThresholdVersion, isForceUpdateEnabled: $isForceUpdateEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForceUpdateImpl &&
            (identical(other.forceUpdateThresholdVersion,
                    forceUpdateThresholdVersion) ||
                other.forceUpdateThresholdVersion ==
                    forceUpdateThresholdVersion) &&
            (identical(other.isForceUpdateEnabled, isForceUpdateEnabled) ||
                other.isForceUpdateEnabled == isForceUpdateEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, forceUpdateThresholdVersion, isForceUpdateEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForceUpdateImplCopyWith<_$ForceUpdateImpl> get copyWith =>
      __$$ForceUpdateImplCopyWithImpl<_$ForceUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForceUpdateImplToJson(
      this,
    );
  }
}

abstract class _ForceUpdate implements ForceUpdate {
  const factory _ForceUpdate(
      {required final String forceUpdateThresholdVersion,
      required final bool isForceUpdateEnabled}) = _$ForceUpdateImpl;

  factory _ForceUpdate.fromJson(Map<String, dynamic> json) =
      _$ForceUpdateImpl.fromJson;

  @override
  String get forceUpdateThresholdVersion;
  @override
  bool get isForceUpdateEnabled;
  @override
  @JsonKey(ignore: true)
  _$$ForceUpdateImplCopyWith<_$ForceUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
