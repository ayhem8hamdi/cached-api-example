import 'package:caching/core/theme/text_styles/app_styles.dart';
import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Text(
        'Cards',
        style: AppStyles.styleBold17(context),
      ),
    ));
  }
}
