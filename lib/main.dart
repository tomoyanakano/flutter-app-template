import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_template/src/theme/theme.dart';
import 'dart:async';
import 'package:flutter_app_template/src/utilities/logger/logger.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app_template/src/router/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    await Future.wait([
      Firebase.initializeApp(),
    ]);
    runApp(const ProviderScope(child: _MaterialApp()));
  }, (error, stackTrace) {
    logger.e(error.toString());
    logger.e(stackTrace.toString());
  });
}

class _MaterialApp extends ConsumerWidget {
  const _MaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final theme = ref.watch(themeProvider);
    return MaterialApp.router(
      theme: theme,
      title: const String.fromEnvironment('appName'),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
