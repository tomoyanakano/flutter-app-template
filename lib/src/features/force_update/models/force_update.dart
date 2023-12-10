import 'package:freezed_annotation/freezed_annotation.dart';

part 'force_update.freezed.dart';
part 'force_update.g.dart';

/// アップデート情報のモデル
@freezed
class ForceUpdate with _$ForceUpdate {
  const factory ForceUpdate({
    required String forceUpdateThresholdVersion,
    required bool isForceUpdateEnabled,
  }) = _ForceUpdate;

  factory ForceUpdate.fromJson(Map<String, Object?> json) =>
      _$ForceUpdateFromJson(json);
}
