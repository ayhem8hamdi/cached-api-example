import 'package:caching/core/theme/text_styles/app_styles.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Text(
        'Settings',
        style: AppStyles.styleBold17(context),
      ),
    ));
  }
}
