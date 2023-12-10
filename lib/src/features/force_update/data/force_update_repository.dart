import 'package:flutter_app_template/src/features/force_update/data/force_update_remote_data_source.dart';
import 'package:flutter_app_template/src/features/force_update/models/force_update.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'force_update_repository.g.dart';

class ForceUpdateRepository {
  const ForceUpdateRepository(this.ref);
  final Ref ref;

  ForceUpdateRemoteDataSource get forceUpdateRemoteDataSource =>
      ref.read(forceUpdateRemoteDataSourceProvider);

  Stream<ForceUpdate?> forceUpdateStream(String operatingSystem) {
    final stream =
        forceUpdateRemoteDataSource.forceUpdateStream(operatingSystem);
    return stream.map((event) {
      if (event.data() == null) {
        return null;
      } else {
        return ForceUpdate.fromJson(event.data()!);
      }
    });
  }
}

@riverpod
ForceUpdateRepository forceUpdateRepository(Ref ref) =>
    ForceUpdateRepository(ref);
