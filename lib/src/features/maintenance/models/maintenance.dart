import 'package:freezed_annotation/freezed_annotation.dart';

part 'maintenance.freezed.dart';
part 'maintenance.g.dart';

@freezed
class Maintenance with _$Maintenance {
  const factory Maintenance({
    @Default(false) bool isUnderMaintenance,
    required String maintenanceThresholdVersion,
  }) = _Maintenance;

  factory Maintenance.fromJson(Map<String, Object?> json) =>
      _$MaintenanceFromJson(json);
}
