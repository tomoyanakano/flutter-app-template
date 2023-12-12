
import 'dart:async';

import 'package:flutter_app_template/src/extensions/extensions.dart';
import 'package:flutter_app_template/src/features/auth/application/auth_service.dart';
import 'package:flutter_app_template/src/features/snack_bar/snack_bar_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'sign_in_form_notifier.g.dart';

@riverpod
class SignInFormNotifier extends _$SignInFormNotifier {
  AuthService get authService => ref.read(authServiceProvider);
  SnackBarNotifier get snackBarNotifier =>
      ref.read(snackBarNotifierProvider.notifier);

  @override
  FutureOr<void> build() {}

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      state = const AsyncLoading();
      await authService.signInWithEmailAndPassword(
       email: email,
       password: password,
      );
    } on Exception catch (e) {
      snackBarNotifier.setSnackBar(e.message);
    } finally {
      state = const AsyncData(null);
      snackBarNotifier.setSnackBar('Sign in successfully');
    }
  }
}
