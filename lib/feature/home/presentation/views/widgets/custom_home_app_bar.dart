import 'package:caching/core/theme/text_styles/app_styles.dart';
import 'package:flutter/material.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Text(
        'Caching Data With Bloc & Hive',
        textAlign: TextAlign.center,
        style: AppStyles.styleMeduim22(context),
      ),
    ));
  }
}
