import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app_template/src/utilities/firebase/cloud_firestore/cloud_firestore_path.dart';
import 'package:flutter_app_template/src/utilities/firebase/cloud_firestore/cloud_firestore_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'maintenance_remote_data_source.g.dart';

class MaintenanceRemoteDataSource {
  const MaintenanceRemoteDataSource(this.ref);
  final Ref ref;

  CloudFirestorePath get cloudFirestorePath =>
      ref.read(cloudFirestorePathProvider);
  CloudFirestoreService get cloudFirestoreService =>
      ref.read(cloudFirestoreServiceProvider);

  Stream<DocumentSnapshot<Map<String, dynamic>>> meintenanceStream(String os) =>
      cloudFirestoreService.documentStream(
        documentPath: cloudFirestorePath.maintenanceDocumentPath(os),
      );
}

@riverpod
MaintenanceRemoteDataSource maintenanceRemoteDataSource(Ref ref) =>
    MaintenanceRemoteDataSource(ref);
