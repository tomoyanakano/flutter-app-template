import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'device_info_plus_service.g.dart';

class DeviceInfoPlusService {
  DeviceInfoPlusService(this.ref, this.plugin);
  final Ref ref;
  final DeviceInfoPlugin plugin;

  Future<AndroidDeviceInfo> get androidInfo => plugin.androidInfo;
  Future<IosDeviceInfo> get iosInfo => plugin.iosInfo;
}

@Riverpod(keepAlive: true)
DeviceInfoPlusService deviceInfoPlusService(Ref ref) =>
    DeviceInfoPlusService(ref, DeviceInfoPlugin());
