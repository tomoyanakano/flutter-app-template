import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'cloud_firestore_path.g.dart';

enum PathDomain { users }

class CloudFirestorePath {
  // users
  static const String userVersion = 'v1';
  final String usersCollectionPath = '${PathDomain.users.name}_$userVersion';
  String userDocumentPath(String userId) => '$usersCollectionPath/$userId';
}

@riverpod
CloudFirestorePath cloudFirestorePath(Ref ref) => CloudFirestorePath();
