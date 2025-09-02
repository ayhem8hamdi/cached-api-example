import 'package:caching/core/theme/text_styles/responsive_font_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  static TextStyle _baseCairo(BuildContext context) => GoogleFonts.poppins();

  static TextStyle styleMeduim22(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onSurface,
        fontSize: responsiveFontSize(context, fontSize: 22),
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleBold17(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onSurface,
        fontSize: responsiveFontSize(context, fontSize: 19),
        fontWeight: FontWeight.w700,
      );

  static TextStyle styleSemiBold15(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onSurface,
        fontSize: responsiveFontSize(context, fontSize: 15.4),
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleRegular15(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onSecondary,
        fontSize: responsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.w400,
      );
}
