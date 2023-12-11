import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_template/src/extensions/context_extension.dart';
import 'package:flutter_app_template/src/features/force_update/models/force_update_status.dart';
import 'package:flutter_app_template/src/features/force_update/providers/force_update_status_provider.dart';
import 'package:flutter_app_template/src/utilities/url_launcher/url_launcher_service.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ForceUpdateDialog extends HookConsumerWidget {
  const ForceUpdateDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forceUpdateStatus = ref.watch(forceUpdateStatusProvider);

    if (forceUpdateStatus is! AsyncData) {
      return const SizedBox();
    }

    if (forceUpdateStatus.value == ForceUpdateStatus.updateAvailable ||
        forceUpdateStatus.value == ForceUpdateStatus.updateRequired) {
      useEffect(
        () {
          WidgetsBinding.instance.addPostFrameCallback(
            (_) async => showDialog(
              barrierDismissible:
                  ForceUpdateStatus.updateRequired != forceUpdateStatus.value,
              context: context,
              builder: (_) => _Dialog(
                title: 'App Update',
                description: 'Please update the app to continue using it.',
                cancelLabel:
                    ForceUpdateStatus.updateRequired != forceUpdateStatus.value
                        ? 'Cancel'
                        : null,
                okLabel: 'Ok',
              ),
            ),
          );
          return null;
        },
        [],
      );
    }

    return const SizedBox();
  }
}

class _Dialog extends ConsumerWidget {
  const _Dialog({
    required this.title,
    required this.description,
    required this.okLabel,
    this.cancelLabel,
  });

  final String title;
  final String description;
  final String? cancelLabel;
  final String okLabel;
  static const androidStoreUrl =
      'https://play.google.com/store/apps/details?id=';
  static const iosStoreUrl = 'https://apps.apple.com/app/id';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final urlLauncherService = ref.watch(urlLauncherServiceProvider);
    if (Platform.isAndroid) {
      return AlertDialog(
        title: Text(
          title,
          style: context.textTheme.titleMedium,
        ),
        content: Text(description, style: context.textTheme.bodyMedium),
        actions: [
          if (cancelLabel != null)
            TextButton(
              child: Text(cancelLabel!),
              onPressed: () => Navigator.pop(context),
            ),
          TextButton(
            child: Text(okLabel),
            onPressed: () => urlLauncherService.launchFromUrl(androidStoreUrl),
          ),
        ],
      );
    }
    return CupertinoAlertDialog(
      title: Text(
        title,
        style: context.textTheme.titleMedium,
      ),
      content: Text(description, style: context.textTheme.bodyMedium),
      actions: [
        if (cancelLabel != null)
          TextButton(
            child: Text(cancelLabel!),
            onPressed: () => Navigator.pop(context),
          ),
        TextButton(
          child: Text(okLabel),
          onPressed: () => urlLauncherService.launchFromUrl(iosStoreUrl),
        ),
      ],
    );
  }
}
