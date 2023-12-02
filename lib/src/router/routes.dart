import 'package:flutter/material.dart';
import 'package:flutter_app_template/src/features/root/root.dart';
import 'package:flutter_app_template/src/features/snack_bar/snack_bar_handler.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedShellRoute<ShellRoute>(
  routes: [
    TypedGoRoute<HomeRoute>(
      path: '/',
      name: 'Home',
      routes: [],
    )
  ],
)
class ShellRoute extends ShellRouteData {
  const ShellRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    Widget navigator,
  ) {
    return Stack(
      children: [
        const SnackBarHandler(),
        navigator,
      ],
    );
  }
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Root(0);
  }
}
