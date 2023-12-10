import 'package:flutter_app_template/src/features/force_update/data/force_update_repository.dart';
import 'package:flutter_app_template/src/features/force_update/models/force_update.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'force_update_service.g.dart';

class ForceUpdateService {
  const ForceUpdateService(this.ref);
  final Ref ref;

  ForceUpdateRepository get forceUpdateRepository =>
      ref.read(forceUpdateRepositoryProvider);

  Stream<ForceUpdate?> get forceUpdateStreamForAndroid =>
      forceUpdateRepository.forceUpdateStream(OS.android.name);

  Stream<ForceUpdate?> get forceUpdateStreamForIos =>
      forceUpdateRepository.forceUpdateStream(OS.ios.name);
}

enum OS { android, ios }

@Riverpod(keepAlive: true)
ForceUpdateService forceUpdateService(Ref ref) => ForceUpdateService(ref);
