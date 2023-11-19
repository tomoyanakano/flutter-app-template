import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connectivity_plus_service.g.dart';

class ConnectivityPlusService {
  ConnectivityPlusService(this.ref);
  final Ref ref;

  Stream<ConnectivityResult> get onConnectivityChanged =>
      Connectivity().onConnectivityChanged;

  Future<ConnectivityResult> get checkConnectivity =>
      Connectivity().checkConnectivity();
}

@riverpod
ConnectivityPlusService connectivityPlusService(Ref ref) =>
    ConnectivityPlusService(ref);
