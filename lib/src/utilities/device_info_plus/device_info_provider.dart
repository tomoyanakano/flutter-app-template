import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_app_template/src/utilities/device_info_plus/device_info_plus_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'device_info_provider.g.dart';

@riverpod
Future<BaseDeviceInfo> deviceInfo(Ref ref) {
  if (Platform.isIOS) {
    return ref.watch(deviceInfoPlusServiceProvider).iosInfo;
  } else {
    return ref.watch(deviceInfoPlusServiceProvider).androidInfo;
  }
}
