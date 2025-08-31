import 'package:caching/feature/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:caching/feature/home/presentation/views/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [CustomHomeAppBar(), SliverGap(25), ProductItem()],
        ),
      ),
    );
  }
}
