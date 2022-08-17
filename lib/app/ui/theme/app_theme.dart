import 'package:fimex/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static final appTheme = ThemeData(
    fontFamily: 'SFProDisplay',
    scaffoldBackgroundColor: AppColors.scaffoldBg,
    colorScheme: ColorScheme.fromSwatch(
      accentColor: AppColors.main,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: AppColors.grey2),
    ),
  );
}
