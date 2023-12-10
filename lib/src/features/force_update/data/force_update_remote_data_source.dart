import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app_template/src/utilities/firebase/cloud_firestore/cloud_firestore_path.dart';
import 'package:flutter_app_template/src/utilities/firebase/cloud_firestore/cloud_firestore_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'force_update_remote_data_source.g.dart';

class ForceUpdateRemoteDataSource {
  const ForceUpdateRemoteDataSource(this.ref);
  final Ref ref;
  static const key = 'force_update';
  CloudFirestorePath get cloudFirestorePath =>
      ref.read(cloudFirestorePathProvider);
  CloudFirestoreService get cloudFirestoreService =>
      ref.read(cloudFirestoreServiceProvider);

  Stream<DocumentSnapshot<Map<String, dynamic>>> forceUpdateStream(String os) =>
      cloudFirestoreService.documentStream(
        documentPath: cloudFirestorePath.forceUpdateDocumentPath(os),
      );
}

@riverpod
ForceUpdateRemoteDataSource forceUpdateRemoteDataSource(Ref ref) =>
    ForceUpdateRemoteDataSource(ref);
