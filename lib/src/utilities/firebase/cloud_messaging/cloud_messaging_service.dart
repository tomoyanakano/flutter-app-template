import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cloud_messaging_service.g.dart';

class CloudMessagingService {
  CloudMessagingService(this.ref, this.instance);
  final Ref ref;
  final FirebaseMessaging instance;

  Future<NotificationSettings> requestPermission() async {
    await instance.subscribeToTopic('announcements');
    return instance.requestPermission();
  }

  Future<String?> getToken() async => instance.getToken();

  Future<String?> get token async => instance.getToken();

  Future<RemoteMessage?> getInitialMessage() => instance.getInitialMessage();

  Stream<RemoteMessage> onMessageOpenedApp() =>
      FirebaseMessaging.onMessageOpenedApp;

  Future<NotificationSettings> notificationSettings() async =>
      await instance.getNotificationSettings();

  Future<AuthorizationStatus> authorizationStatus() async {
    final settings = await instance.getNotificationSettings();
    return settings.authorizationStatus;
  }

  Future<void> subscribeToTopic(String topic) async {
    await instance.subscribeToTopic(topic);
  }
}

@Riverpod(keepAlive: true)
CloudMessagingService cloudMessagingService(Ref ref) =>
    CloudMessagingService(ref, FirebaseMessaging.instance);

@riverpod
Future<RemoteMessage?> initialMessage(Ref ref) =>
    ref.watch(cloudMessagingServiceProvider).getInitialMessage();

@riverpod
Stream<RemoteMessage> onMessageOpenedApp(Ref ref) =>
    ref.watch(cloudMessagingServiceProvider).onMessageOpenedApp();

@riverpod
Future<AuthorizationStatus> notificationAutorizationStatus(Ref ref) =>
    ref.watch(cloudMessagingServiceProvider).authorizationStatus();
