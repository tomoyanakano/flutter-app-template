import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'package_info_plus_service.g.dart';

class PackageInfoPlusService {
  PackageInfoPlusService(this.ref);
  final Ref ref;

  Future<PackageInfo> get packageInfo => PackageInfo.fromPlatform();
}

@Riverpod(keepAlive: true)
PackageInfoPlusService packageInfoPlusService(Ref ref) =>
    PackageInfoPlusService(ref);
