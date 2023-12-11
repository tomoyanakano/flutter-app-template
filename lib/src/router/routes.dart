import 'package:flutter/material.dart';
import 'package:flutter_app_template/src/features/force_update/presentation/force_update.dart';
import 'package:flutter_app_template/src/features/maintenance/presentation/maintenance_dialog.dart';
import 'package:flutter_app_template/src/features/notification/presentation/notification_handler.dart';
import 'package:flutter_app_template/src/features/root/root.dart';
import 'package:flutter_app_template/src/features/snack_bar/snack_bar_handler.dart';
import 'package:flutter_app_template/src/utilities/app_tracking_transparency/app_tracking_transparency_handler.dart';
import 'package:flutter_app_template/src/utilities/connectivity_plus/connectivity_handler.dart';
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
        const MaintenanceDialog(),
        const ForceUpdateDialog(),
        const SnackBarHandler(),
        const AppTrackingTransparencyHandler(),
        const NotificationHandler(),
        const ConnectivityHandler(),
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
