import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_template/src/extensions/context_extension.dart';
import 'package:flutter_app_template/src/features/maintenance/providers/maintenance_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MaintenanceDialog extends HookConsumerWidget {
  const MaintenanceDialog({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final maintenanceAsync = ref.watch(maintenanceProvider);

    if (maintenanceAsync is! AsyncData) {
      return const SizedBox();
    }

    if (maintenanceAsync.value?.isUnderMaintenance ?? false) {
      useEffect(
        () {
          WidgetsBinding.instance.addPostFrameCallback(
            (_) async => showDialog(
              barrierDismissible: false,
              context: context,
              builder: (_) => const _Dialog(),
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
  const _Dialog();

  String get title => "Under Maintenance";
  String get description =>
      "The app is under maintenance. Please try again later.";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (Platform.isAndroid) {
      return AlertDialog(
        title: Text(
          title,
          style: context.textTheme.titleMedium,
        ),
        content: Text(
          description,
          style: context.textTheme.bodyMedium,
        ),
      );
    }
    return CupertinoAlertDialog(
      title: Text(
        title,
        style: context.textTheme.titleMedium,
      ),
      content: Text(
        description,
        style: context.textTheme.bodyMedium,
      ),
    );
  }
}
