import 'package:caching/core/app_assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const NavShell(this.navigationShell, {super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: cs.onTertiary,
        unselectedItemColor: cs.onPrimary,
        currentIndex: navigationShell.currentIndex,
        onTap: navigationShell.goBranch,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                Assets.home,
                width: 24,
                height: 24,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset(
                Assets.credit,
                width: 24,
                height: 24,
              ),
              label: "my cards"),
          BottomNavigationBarItem(
              icon: Image.asset(
                Assets.chart,
                width: 24,
                height: 24,
              ),
              label: "satistics"),
          BottomNavigationBarItem(
              icon: Image.asset(
                Assets.setting,
                width: 24,
                height: 24,
              ),
              label: "settings"),
        ],
      ),
    );
  }
}
