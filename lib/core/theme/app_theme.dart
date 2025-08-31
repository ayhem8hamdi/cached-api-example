import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData getLightTheme() {
    return FlexThemeData.light(
      scheme: FlexScheme.indigo,
      appBarElevation: 0,
      useMaterial3: true,
    );
  }

  static ThemeData getDarkTheme() {
    return FlexThemeData.dark(
      scheme: FlexScheme.indigo,
      appBarElevation: 0,
      useMaterial3: true,
    );
  }
}
