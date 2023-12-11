import 'dart:io';

import 'package:flutter_app_template/src/features/maintenance/application/maintenance_service.dart';
import 'package:flutter_app_template/src/features/maintenance/models/maintenance.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'maintenance_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<Maintenance?> maintenance(Ref ref) {
  if (Platform.isIOS) {
    return ref.watch(maintenanceServiceProvider).maintenanceStreamForIos;
  } else {
    return ref.watch(maintenanceServiceProvider).maintenanceStreamForAndroid;
  }
}
