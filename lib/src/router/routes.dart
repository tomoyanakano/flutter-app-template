import 'package:flutter/material.dart';
import 'package:flutter_app_template/src/features/home/home_page.dart';
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
        navigator,
      ],
    );
  }
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
