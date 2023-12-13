import 'package:flutter_app_template/src/utilities/firebase/analytics/firebase_analytics_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../utilities/firebase/authentication/firebase_auth_service.dart';

@riverpod
Stream<User?> authState(Ref ref) {
  final firebaseAuthService = ref.watch(firebaseAuthServiceProvider);
  final firebaseAnalyticsService = ref.watch(firebaseAnalyticsServiceProvider);
  return firebaseAuthService.authStateStream.map((user) {
    if (user != null) {
      firebaseAnalyticsService.setUserId(user.uid);
    }
    return user;
  });
}
