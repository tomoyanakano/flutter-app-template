import 'package:flutter_app_template/src/utilities/firebase/authentication/firebase_auth_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_service.g.dart';

class AuthService {
  const AuthService(this.ref);
  final Ref ref;

  FirebaseAuthService get firebaseAuthService =>
      ref.read(firebaseAuthServiceProvider);

  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await firebaseAuthService.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await firebaseAuthService.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}

@riverpod
AuthService authService(Ref ref) => AuthService(ref);
