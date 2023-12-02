import 'package:flutter/material.dart';
import 'package:flutter_app_template/src/features/snack_bar/snack_bar_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'snack_bar_notifier.g.dart';

@riverpod
class SnackBarNotifier extends _$SnackBarNotifier {
  @override
  SnackBarState build() => const SnackBarState();

  void setSnackBar(
    String message, {
    VoidCallback? action,
  }) {
    if (state.message != message) {
      state = SnackBarState(
        message: message,
        action: action,
      );
    }
  }

  void clear() {
    state = const SnackBarState();
  }
}
