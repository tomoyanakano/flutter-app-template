import 'package:flutter/material.dart';
import 'package:flutter_app_template/src/router/routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  final routeNotifier = ref.watch(routerNotifierProvider);
  return GoRouter(
    routes: $appRoutes,
    redirect: routeNotifier.redirect,
    initialLocation: '/',
    observers: [GoRouterObserver(ref)],
  );
}

ChangeNotifierProvider<RouterNotifier> routerNotifierProvider =
    ChangeNotifierProvider<RouterNotifier>((ref) {
  return RouterNotifier(ref);
});

class RouterNotifier extends ChangeNotifier {
  RouterNotifier(this.ref) {
    // Ref watch
  }
  final Ref ref;

  String? redirect(BuildContext context, GoRouterState state) {
    return null;
  }
}

class GoRouterObserver extends NavigatorObserver {
  GoRouterObserver(this.ref);
  final Ref ref;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('didPush: ${route.settings.name}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('didPop: ${route.settings.name}');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('didRemove: ${route.settings.name}');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    debugPrint('didReplace: ${newRoute?.settings.name}');
  }
}
