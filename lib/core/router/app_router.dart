import 'package:caching/core/shared_widgets/custom_buttom_nav_bar.dart';
import 'package:caching/feature/cards/presentation/view/cards_screen.dart';
import 'package:caching/feature/home/presentation/views/home_details_screen.dart';
import 'package:caching/feature/home/presentation/views/widgets/home_screen_body.dart';
import 'package:caching/feature/settings/presentation/views/settings_screen.dart';
import 'package:caching/feature/stats/presentation/views/stats_screen.dart';
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
                  name: home,
                  path: '/home',
                  builder: (context, state) => const HomeScreenBody(),
                  routes: [
                    GoRoute(
                      path: 'details',
                      builder: (context, state) => const HomeDetailsScreen(),
                    )
                  ]),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: myCards,
                path: '/carts',
                builder: (context, state) => const CardsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: stats,
                path: '/stats',
                builder: (context, state) => const StatsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                  name: parameters,
                  path: '/params',
                  builder: (context, state) => const SettingsScreen()),
            ],
          ),
        ])
  ]);
}
