import 'package:flutter_app_template/src/features/force_update/models/force_update_status.dart';
import 'package:flutter_app_template/src/features/force_update/providers/force_update_provider.dart';
import 'package:flutter_app_template/src/utilities/package_info_plus/package_info_plus_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'force_update_status_provider.g.dart';

@riverpod
Future<ForceUpdateStatus?> forceUpdateStatus(Ref ref) async {
  final forceUpdate = ref.watch(forceUpdateProvider).value;
  final packageInfo = ref.watch(packageInfoProvider).value;

  if (forceUpdate == null || packageInfo == null) {
    return null;
  }

  final clientVersion = int.parse(packageInfo.version.replaceAll('.', ''));
  final latestVersion =
      int.parse(forceUpdate.forceUpdateThresholdVersion.replaceAll('.', ''));

  if (clientVersion < latestVersion && forceUpdate.isForceUpdateEnabled) {
    return ForceUpdateStatus.updateRequired;
  } else if (clientVersion < latestVersion &&
      !forceUpdate.isForceUpdateEnabled) {
    return ForceUpdateStatus.updateAvailable;
  } else {
    return ForceUpdateStatus.upToDate;
  }
}
