import 'dart:io';

import 'package:flutter_app_template/src/features/force_update/application/force_update_service.dart';
import 'package:flutter_app_template/src/features/force_update/models/force_update.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'force_update_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<ForceUpdate?> forceUpdate(Ref ref) {
  if (Platform.isIOS) {
    return ref.watch(forceUpdateServiceProvider).forceUpdateStreamForIos;
  } else {
    return ref.watch(forceUpdateServiceProvider).forceUpdateStreamForAndroid;
  }
}
