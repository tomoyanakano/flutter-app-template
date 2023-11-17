import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app_template/src/extensions/extensions.dart';
import 'package:flutter_app_template/src/utilities/firebase/authentication/firebase_auth_exception_code.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'firebase_auth_service.g.dart';

class FirebaseAuthService {
  FirebaseAuthService(this.firebaseAuth);
  final FirebaseAuth firebaseAuth;

  User? get currentUser => firebaseAuth.currentUser;
  Stream<User?> get authStateStream => firebaseAuth.authStateChanges();

  void _handleFirebaseAuthException(FirebaseAuthException e) {
    final exception =
        FirebaseAuthExceptionCode.values.byName(e.code.kebabToCamel());
    throw Exception(exception.message);
  }

  Future<User?> signInAnonymously() async {
    try {
      final cred = await firebaseAuth.signInAnonymously();
      return cred.user;
    } on FirebaseAuthException catch (e) {
      _handleFirebaseAuthException(e);
      return null;
    } catch (e) {
      throw Exception('予期せぬエラーが発生しました');
    }
  }

  Future<void> signOut() => firebaseAuth.signOut();

  Future<void> deleteUser() async {
    try {
      final user = firebaseAuth.currentUser;
      if (user != null) {
        await user.delete();
      }
    } on FirebaseAuthException catch (e) {
      _handleFirebaseAuthException(e);
    }
  }

  Future<AuthCredential> getEmailCredential({
    required String email,
    required String password,
  }) async =>
      EmailAuthProvider.credential(email: email, password: password);

  Future<void> linkWithCredential(AuthCredential credential) async {
    try {
      await currentUser?.linkWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      _handleFirebaseAuthException(e);
    }
  }

  Future<void> convertEmailUserToPermanentAccount({
    required String email,
    required String password,
  }) async {
    final credential =
        await getEmailCredential(email: email, password: password);
    await linkWithCredential(credential);
  }

  Future<User?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final cred = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return cred.user;
    } on FirebaseAuthException catch (e) {
      _handleFirebaseAuthException(e);
      return null;
    } catch (e) {
      throw Exception('予期せぬエラーが発生しました');
    }
  }

  Future<User?> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final cred = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return cred.user;
    } on FirebaseAuthException catch (e) {
      _handleFirebaseAuthException(e);
      return null;
    } catch (e) {
      throw Exception('予期せぬエラーが発生しました');
    }
  }
}

@riverpod
FirebaseAuthService firebaseAuthService(Ref ref) =>
    FirebaseAuthService(FirebaseAuth.instance);
