import 'package:flutter_app_template/src/features/maintenance/data/maintenance_repository.dart';
import 'package:flutter_app_template/src/features/maintenance/models/maintenance.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'maintenance_service.g.dart';

class MaintenanceService {
  const MaintenanceService(this.ref);
  final Ref ref;

  MaintenanceRepository get maintenanceRepository =>
      ref.read(maintenanceRepositoryProvider);

  Stream<Maintenance?> get maintenanceStreamForAndroid =>
      maintenanceRepository.maintenanceStream(OS.android.name);

  Stream<Maintenance?> get maintenanceStreamForIos =>
      maintenanceRepository.maintenanceStream(OS.ios.name);
}

enum OS { android, ios }

@Riverpod(keepAlive: true)
MaintenanceService maintenanceService(Ref ref) => MaintenanceService(ref);
