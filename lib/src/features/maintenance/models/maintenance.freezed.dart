// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'maintenance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Maintenance _$MaintenanceFromJson(Map<String, dynamic> json) {
  return _Maintenance.fromJson(json);
}

/// @nodoc
mixin _$Maintenance {
  bool get isUnderMaintenance => throw _privateConstructorUsedError;
  String get maintenanceThresholdVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MaintenanceCopyWith<Maintenance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenanceCopyWith<$Res> {
  factory $MaintenanceCopyWith(
          Maintenance value, $Res Function(Maintenance) then) =
      _$MaintenanceCopyWithImpl<$Res, Maintenance>;
  @useResult
  $Res call({bool isUnderMaintenance, String maintenanceThresholdVersion});
}

/// @nodoc
class _$MaintenanceCopyWithImpl<$Res, $Val extends Maintenance>
    implements $MaintenanceCopyWith<$Res> {
  _$MaintenanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUnderMaintenance = null,
    Object? maintenanceThresholdVersion = null,
  }) {
    return _then(_value.copyWith(
      isUnderMaintenance: null == isUnderMaintenance
          ? _value.isUnderMaintenance
          : isUnderMaintenance // ignore: cast_nullable_to_non_nullable
              as bool,
      maintenanceThresholdVersion: null == maintenanceThresholdVersion
          ? _value.maintenanceThresholdVersion
          : maintenanceThresholdVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MaintenanceImplCopyWith<$Res>
    implements $MaintenanceCopyWith<$Res> {
  factory _$$MaintenanceImplCopyWith(
          _$MaintenanceImpl value, $Res Function(_$MaintenanceImpl) then) =
      __$$MaintenanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isUnderMaintenance, String maintenanceThresholdVersion});
}

/// @nodoc
class __$$MaintenanceImplCopyWithImpl<$Res>
    extends _$MaintenanceCopyWithImpl<$Res, _$MaintenanceImpl>
    implements _$$MaintenanceImplCopyWith<$Res> {
  __$$MaintenanceImplCopyWithImpl(
      _$MaintenanceImpl _value, $Res Function(_$MaintenanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUnderMaintenance = null,
    Object? maintenanceThresholdVersion = null,
  }) {
    return _then(_$MaintenanceImpl(
      isUnderMaintenance: null == isUnderMaintenance
          ? _value.isUnderMaintenance
          : isUnderMaintenance // ignore: cast_nullable_to_non_nullable
              as bool,
      maintenanceThresholdVersion: null == maintenanceThresholdVersion
          ? _value.maintenanceThresholdVersion
          : maintenanceThresholdVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaintenanceImpl implements _Maintenance {
  const _$MaintenanceImpl(
      {this.isUnderMaintenance = false,
      required this.maintenanceThresholdVersion});

  factory _$MaintenanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaintenanceImplFromJson(json);

  @override
  @JsonKey()
  final bool isUnderMaintenance;
  @override
  final String maintenanceThresholdVersion;

  @override
  String toString() {
    return 'Maintenance(isUnderMaintenance: $isUnderMaintenance, maintenanceThresholdVersion: $maintenanceThresholdVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintenanceImpl &&
            (identical(other.isUnderMaintenance, isUnderMaintenance) ||
                other.isUnderMaintenance == isUnderMaintenance) &&
            (identical(other.maintenanceThresholdVersion,
                    maintenanceThresholdVersion) ||
                other.maintenanceThresholdVersion ==
                    maintenanceThresholdVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isUnderMaintenance, maintenanceThresholdVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintenanceImplCopyWith<_$MaintenanceImpl> get copyWith =>
      __$$MaintenanceImplCopyWithImpl<_$MaintenanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaintenanceImplToJson(
      this,
    );
  }
}

abstract class _Maintenance implements Maintenance {
  const factory _Maintenance(
      {final bool isUnderMaintenance,
      required final String maintenanceThresholdVersion}) = _$MaintenanceImpl;

  factory _Maintenance.fromJson(Map<String, dynamic> json) =
      _$MaintenanceImpl.fromJson;

  @override
  bool get isUnderMaintenance;
  @override
  String get maintenanceThresholdVersion;
  @override
  @JsonKey(ignore: true)
  _$$MaintenanceImplCopyWith<_$MaintenanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
