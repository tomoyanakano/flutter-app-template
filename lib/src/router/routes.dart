import 'package:flutter/material.dart';
import 'package:flutter_app_template/src/features/force_update/presentation/force_update_dialog_handler.dart';
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
        const ForceUpdateDialogHandler(),
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
