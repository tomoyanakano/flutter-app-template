// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'force_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForceUpdateImpl _$$ForceUpdateImplFromJson(Map<String, dynamic> json) =>
    _$ForceUpdateImpl(
      forceUpdateThresholdVersion:
          json['forceUpdateThresholdVersion'] as String,
      isForceUpdateEnabled: json['isForceUpdateEnabled'] as bool,
    );

Map<String, dynamic> _$$ForceUpdateImplToJson(_$ForceUpdateImpl instance) =>
    <String, dynamic>{
      'forceUpdateThresholdVersion': instance.forceUpdateThresholdVersion,
      'isForceUpdateEnabled': instance.isForceUpdateEnabled,
    };
