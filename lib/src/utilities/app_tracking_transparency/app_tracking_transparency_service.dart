import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_tracking_transparency_service.g.dart';

class AppTrackingTransparencyService {
  AppTrackingTransparencyService(this.ref);
  final Ref ref;

  Future<TrackingStatus> get trackingAuthorizationStatus =>
      AppTrackingTransparency.trackingAuthorizationStatus;

  Future<void> requestTrackingAuthorization() async {
    await AppTrackingTransparency.requestTrackingAuthorization();
  }
}

@riverpod
AppTrackingTransparencyService appTrackingTransparencyService(Ref ref) =>
    AppTrackingTransparencyService(ref);

@riverpod
Future<TrackingStatus> trackingAuthorizationStatus(Ref ref) => ref
    .read(appTrackingTransparencyServiceProvider)
    .trackingAuthorizationStatus;
