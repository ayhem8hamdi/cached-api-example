import 'package:caching/core/theme/text_styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeDetailsScreen extends StatelessWidget {
  const HomeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: InkWell(
        onTap: () => context.pop(),
        child: Text(
          'Home Details',
          style: AppStyles.styleBold17(context),
        ),
      ),
    ));
  }
}
