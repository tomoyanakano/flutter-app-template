import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cloud_storage_service.g.dart';

class CloudStorageService {
  CloudStorageService(this.ref, this.instance);
  final Ref ref;
  final FirebaseStorage instance;

  Future<void> putFile(String path, File file) async {
    await instance.ref(path).putFile(file);
  }

  Future<String> getDownloadURL(String path) async {
    return await instance.ref(path).getDownloadURL();
  }

  Future<void> delete(String path) async {
    await instance.ref(path).delete();
  }

  Future<Uint8List?> getData(String path) async {
    return await instance.ref(path).getData();
  }
}

@riverpod
CloudStorageService cloudStorageService(Ref ref) =>
    CloudStorageService(ref, FirebaseStorage.instance);
