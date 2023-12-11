import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'cloud_firestore_path.g.dart';

enum PathDomain { users, forceUpdate, maintenance }

class CloudFirestorePath {
  // users
  static const String userVersion = 'v1';
  final String usersCollectionPath = '${PathDomain.users.name}_$userVersion';
  String userDocumentPath(String userId) => '$usersCollectionPath/$userId';

  // force_update
  static const String forceUpdateVersion = 'v1';
  final String forceUpdateCollectionPath =
      '${PathDomain.forceUpdate.name}_$forceUpdateVersion';
  String forceUpdateDocumentPath(String operatingSystem) =>
      '$forceUpdateCollectionPath/$operatingSystem';

  // maintenance
  static const String maintenanceVersion = 'v1';
  final String maintenanceCollectionPath =
      '${PathDomain.maintenance.name}_$maintenanceVersion';
  String maintenanceDocumentPath(String operationSystem) =>
      '$maintenanceCollectionPath/$operationSystem';
}

@riverpod
CloudFirestorePath cloudFirestorePath(Ref ref) => CloudFirestorePath();
