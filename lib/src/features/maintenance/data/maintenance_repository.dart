import 'package:flutter_app_template/src/features/maintenance/data/maintenance_remote_data_source.dart';
import 'package:flutter_app_template/src/features/maintenance/models/maintenance.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'maintenance_repository.g.dart';

class MaintenanceRepository {
  const MaintenanceRepository(this.ref);
  final Ref ref;

  MaintenanceRemoteDataSource get maintenanceRemoteDataSource =>
      ref.read(maintenanceRemoteDataSourceProvider);

  Stream<Maintenance?> maintenanceStream(String operatingSystem) {
    final stream =
        maintenanceRemoteDataSource.meintenanceStream(operatingSystem);
    return stream.map((event) {
      if (event.data() == null) {
        return null;
      } else {
        return Maintenance.fromJson(event.data()!);
      }
    });
  }
}

@riverpod
MaintenanceRepository maintenanceRepository(Ref ref) =>
    MaintenanceRepository(ref);
