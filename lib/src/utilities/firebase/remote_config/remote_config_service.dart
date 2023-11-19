import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_config_service.g.dart';

class RemoteConfigService {
  RemoteConfigService(this.ref, this.instance);
  final Ref ref;
  final FirebaseRemoteConfig instance;

  Future<void> initialize() async {
    final remoteConfigSettings = RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
      minimumFetchInterval:
          kDebugMode ? Duration.zero : const Duration(minutes: 10),
    );
    await instance.setConfigSettings(remoteConfigSettings);
    await instance.fetchAndActivate();
  }

  bool getBool(String key) {
    return instance.getBool(key);
  }

  int getInt(String key) {
    return instance.getInt(key);
  }

  String getString(String key) {
    return instance.getString(key);
  }

  Future<RemoteConfigValue> getValue(String key) async {
    return instance.getValue(key);
  }

  Future<Map<String, RemoteConfigValue>> getAll() async {
    return instance.getAll();
  }
}

@riverpod
RemoteConfigService remoteConfigService(Ref ref) =>
    RemoteConfigService(ref, FirebaseRemoteConfig.instance);
