import 'package:flutter/material.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
        child: Text(
      'Caching Data With Bloc & Hive',
      textAlign: TextAlign.center,
    ));
  }
}
