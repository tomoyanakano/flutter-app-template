import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_template/src/utilities/app_tracking_transparency/app_tracking_transparency_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppTrackingTransparencyHandler extends ConsumerWidget {
  const AppTrackingTransparencyHandler({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<TrackingStatus>>(trackingAuthorizationStatusProvider,
        (previous, next) {
      next.whenOrNull(
        data: (status) {
          if (status == TrackingStatus.notDetermined) {
            ref
                .read(appTrackingTransparencyServiceProvider)
                .requestTrackingAuthorization();
          }
        },
      );
    });

    return const SizedBox();
  }
}
