import 'package:app_settings/app_settings.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_app_template/src/utilities/firebase/cloud_messaging/cloud_messaging_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_authorization_status_notifier_provider.g.dart';

@riverpod
class NotificationAuthorizationStatusNotifier
    extends _$NotificationAuthorizationStatusNotifier {
  @override
  FutureOr<AuthorizationStatus> build() async {
    return ref.watch(notificationAutorizationStatusProvider.future);
  }

  Future<void> requestPermission() async {
    if (state.value == AuthorizationStatus.notDetermined) {
      state = const AsyncLoading<AuthorizationStatus>().copyWithPrevious(state);
      await ref.watch(cloudMessagingServiceProvider).requestPermission();
    }
    final authorizationStatus =
        await ref.watch(cloudMessagingServiceProvider).authorizationStatus();
    state = AsyncData(authorizationStatus);
  }

  Future<void> updateNotificationStatus() async {
    if (state.value != AuthorizationStatus.notDetermined) {
      await AppSettings.openAppSettings(type: AppSettingsType.settings);
    }
  }

  /// 通知設定を再取得する
  Future<void> refetch() async {
    state = const AsyncLoading<AuthorizationStatus>().copyWithPrevious(state);
    final authorizationStatus =
        await ref.watch(cloudMessagingServiceProvider).authorizationStatus();
    state = AsyncData(authorizationStatus);
  }
}
