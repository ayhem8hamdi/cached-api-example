import 'package:caching/core/shared_widgets/custom_buttom_nav_bar.dart';
import 'package:caching/feature/home/presentation/views/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String home = "homeScreen";
  static const String myCards = "myCardsScreen";
  static const String parameters = "paramsScreen";
  static const String stats = "statsScreen";
  static final GoRouter goRouter = GoRouter(initialLocation: '/home', routes: [
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => NavShell(navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                builder: (context, state) => const HomeScreenBody(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/carts',
                builder: (context, state) => const Center(
                  child: Text('Carts'),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/stats',
                builder: (context, state) => const Center(child: Text('stats')),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                  path: '/params',
                  builder: (context, state) => Center(
                        child: Text('Settings'),
                      )),
            ],
          ),
        ])
  ]);
}
