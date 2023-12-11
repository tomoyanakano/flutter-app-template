import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_template/src/utilities/firebase/cloud_messaging/cloud_messaging_service.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationHandler extends HookConsumerWidget {
  const NotificationHandler({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<RemoteMessage?>>(initialMessageProvider,
        (prev, next) {
      next.whenOrNull(
        data: (remoteMessage) {
          if (remoteMessage == null) return;
          if (remoteMessage.data['path'] != null) {
            context.go(remoteMessage.data['path']);
          }
        },
      );
    });

    ref.listen<AsyncValue<RemoteMessage>>(
      onMessageOpenedAppProvider,
      (prev, next) {
        next.whenOrNull(
          data: (remoteMessage) {
            if (remoteMessage.data['path'] != null) {
              context.go(remoteMessage.data['path']);
            }
          },
        );
      },
    );

    return const SizedBox();
  }
}
