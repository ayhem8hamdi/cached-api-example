import 'package:caching/core/theme/text_styles/responsive_font_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  static TextStyle _baseCairo(BuildContext context) => GoogleFonts.poppins();

  static TextStyle styleMeduim28(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onSurface,
        fontSize: responsiveFontSize(context, fontSize: 28),
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleMeduim16(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onSurface,
        fontSize: responsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleRegular13(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onSecondary,
        fontSize: responsiveFontSize(context, fontSize: 13),
        fontWeight: FontWeight.w400,
      );
}
