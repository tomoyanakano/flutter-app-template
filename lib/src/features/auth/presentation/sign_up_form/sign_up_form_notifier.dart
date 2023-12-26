import 'dart:async';

import 'package:flutter_app_template/src/extensions/extensions.dart';
import 'package:flutter_app_template/src/features/auth/application/auth_service.dart';
import 'package:flutter_app_template/src/features/snack_bar/snack_bar_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_form_notifier.g.dart';

@riverpod
class SignUpFormNotifier extends _$SignUpFormNotifier {
  AuthService get authService => ref.read(authServiceProvider);
  SnackBarNotifier get snackBarNotifier =>
      ref.read(snackBarNotifierProvider.notifier);

  @override
  FutureOr<void> build() {}

  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    try {
      state = const AsyncLoading();
      await authService.signUpWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on Exception catch (e) {
      snackBarNotifier.setSnackBar(e.message);
    } finally {
      state = const AsyncData(null);
      snackBarNotifier.setSnackBar('Sign up successfully');
    }
  }
}
