import 'package:caching/core/theme/text_styles/app_styles.dart';
import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Text(
        'Stats',
        style: AppStyles.styleBold17(context),
      ),
    ));
  }
}
