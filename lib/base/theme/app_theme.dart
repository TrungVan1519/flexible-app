import 'package:flutter/material.dart';
import 'package:v_office_base/base/theme/color.dart';
import 'package:v_office_base/base/theme/typography.dart';
import 'package:v_office_base/core/app_services/app_services.dart';

class AppThemeData {
  static final Map<AppTheme, ThemeData> data = <AppTheme, ThemeData>{
    AppTheme.light: LightTheme.data,
    AppTheme.dark: DarkTheme.data,
  };
}

class LightTheme {
  static ThemeData data = ThemeData(
    extensions: <ThemeExtension<dynamic>>[
      CustomColors.light,
      CustomTypography.light,
    ],
  );
}

class DarkTheme {
  static ThemeData data = ThemeData(
    extensions: <ThemeExtension<dynamic>>[
      CustomColors.dark,
      CustomTypography.dark,
    ],
  );
}

extension AppThemeEx on AppTheme {
  ThemeData get data => isDark ? DarkTheme.data : LightTheme.data;

  bool get isDark => this == AppTheme.dark;

  String get keyValue {
    if (this == AppTheme.dark) {
      return 'dark';
    }
    return 'light';
  }

  static AppTheme fromValue(String? value) {
    if (value == AppTheme.dark.keyValue) {
      return AppTheme.dark;
    }
    return AppTheme.light;
  }
}
