import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_app_template/src/utilities/connectivity_plus/connectivity_plus_service.dart';
import 'package:flutter_app_template/src/features/snack_bar/snack_bar_notifier.dart';

class ConnectivityHandler extends ConsumerWidget {
  const ConnectivityHandler({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final snackBarNotifier = ref.watch(snackBarNotifierProvider.notifier);
    ref.listen(connectivityProvider, (previous, next) {
      if (previous?.value == null) return;
      if (previous?.value != ConnectivityResult.none &&
          next.value == ConnectivityResult.none) {
        snackBarNotifier.setSnackBar('Unstable connection');
      }
    });

    return const SizedBox();
  }
}
