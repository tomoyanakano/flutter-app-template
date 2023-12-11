// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintenance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MaintenanceImpl _$$MaintenanceImplFromJson(Map<String, dynamic> json) =>
    _$MaintenanceImpl(
      isUnderMaintenance: json['isUnderMaintenance'] as bool? ?? false,
      maintenanceThresholdVersion:
          json['maintenanceThresholdVersion'] as String,
    );

Map<String, dynamic> _$$MaintenanceImplToJson(_$MaintenanceImpl instance) =>
    <String, dynamic>{
      'isUnderMaintenance': instance.isUnderMaintenance,
      'maintenanceThresholdVersion': instance.maintenanceThresholdVersion,
    };
