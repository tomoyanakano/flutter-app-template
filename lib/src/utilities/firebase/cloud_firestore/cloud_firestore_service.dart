import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app_template/src/utilities/logger/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cloud_firestore_service.g.dart';

class CloudFirestoreService {
  CloudFirestoreService(this.firestore);
  final FirebaseFirestore firestore;

  Query<Map<String, dynamic>> collectionReference(String collectionPath) =>
      firestore.collection(collectionPath);

  Future<void> setData({
    required String documentPath,
    required Map<String, dynamic> data,
    bool merge = true,
  }) async {
    final reference = firestore.doc(documentPath);
    logger.i('setData: $documentPath');
    await reference.set(data, SetOptions(merge: merge));
  }

  Future<DocumentReference<Map<String, dynamic>>> addData({
    required String collectionPath,
    required Map<String, dynamic> data,
  }) async {
    final reference = firestore.collection(collectionPath);
    logger.i('addData: $collectionPath');
    return reference.add(data);
  }

  Future<void> addArrayElement({
    required String documentPath,
    required dynamic data,
    required String fieldName,
  }) async {
    final reference = firestore.doc(documentPath);
    logger.i('updateArray: $documentPath');
    await reference.update(<String, dynamic>{
      fieldName: FieldValue.arrayUnion(<dynamic>[data])
    });
  }

  Future<void> removeArrayElement({
    required String documentPath,
    required dynamic data,
    required String fieldName,
  }) async {
    final reference = firestore.doc(documentPath);
    logger.i('removeArray: $documentPath');
    await reference.update(<String, dynamic>{
      fieldName: FieldValue.arrayRemove(<dynamic>[data])
    });
  }

  Future<void> updateData({
    required String documentPath,
    required Map<String, dynamic> data,
  }) async {
    final reference = firestore.doc(documentPath);
    logger.i('update: $documentPath');
    await reference.update(data);
  }

  Future<void> deleteData({required String documentPath}) async {
    final reference = firestore.doc(documentPath);
    logger.i('delete: $documentPath');
    await reference.delete();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> collectionStream({
    required String collectionPath,
    Query<Map<String, dynamic>> Function(Query<Map<String, dynamic>> query)?
        queryBuilder,
  }) {
    Query<Map<String, dynamic>> query = firestore.collection(collectionPath);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    return query.snapshots();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> collectionFuture({
    required String collectionPath,
    Query<Map<String, dynamic>> Function(Query<Map<String, dynamic>> query)?
        queryBuilder,
  }) async {
    Query<Map<String, dynamic>> query = firestore.collection(collectionPath);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    return query.get();
  }

  Stream<DocumentSnapshot<Map<String, dynamic>>> documentStream({
    required String documentPath,
  }) {
    final reference = firestore.doc(documentPath);
    return reference.snapshots();
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> documentFuture({
    required String documentPath,
  }) {
    final reference = firestore.doc(documentPath);
    return reference.get();
  }
}

@riverpod
CloudFirestoreService cloudFirestoreService(Ref ref) =>
    CloudFirestoreService(FirebaseFirestore.instance);
