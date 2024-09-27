// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:v_office_base/base/theme/app_theme.dart';
import 'package:v_office_base/base/theme/color.dart';
import 'package:v_office_base/core/app_services/app_services.dart';

import 'typography.dart';

class CustomThemeModel {
  const CustomThemeModel({
    required this.colors,
    required this.typography,
  });

  final CustomColors colors;
  final CustomTypography typography;
}

final AppCubit appCubit = GetIt.instance<AppCubit>();

class ThemeUtils {
  static CustomColors get color =>
      appCubit.state.appTheme.data.extension<CustomColors>()!;

  static CustomColors colorTheme(BuildContext context) =>
      Theme.of(context).extension<CustomColors>() ?? color;

  static CustomTypography get textStyle =>
      appCubit.state.appTheme.data.extension<CustomTypography>()!;

  static CustomTypography textTheme(BuildContext context) =>
      Theme.of(context).extension<CustomTypography>() ??
      appCubit.state.appTheme.data.extension<CustomTypography>()!;

  static CustomThemeModel themeData(BuildContext context) {
    return CustomThemeModel(
      colors: colorTheme(context),
      typography: textTheme(context),
    );
  }

  static AppTheme get currentTheme => appCubit.state.appTheme;

  static AppLanguage get currentLanguage => appCubit.state.appLanguage;
}

CustomTypography IBTextStyle = ThemeUtils.textStyle;
CustomColors IBColor = ThemeUtils.color;

extension TextStyleCopy on TextStyle? {
  TextStyle? copyColor(Color color) {
    return this?.copyWith(color: color);
  }
}

extension ThemeExtensionEx on BuildContext {
  CustomColors get colors => ThemeUtils.colorTheme(this);

  CustomTypography get textStyle => ThemeUtils.textTheme(this);
}

extension AppThemeImageEx on String {
  String get theme {
    String realPath = this;
    if (!ThemeUtils.currentTheme.isDark && startsWith('assets/images/dark')) {
      realPath = replaceFirst('assets/images/dark', 'assets/images/light');
    }
    return realPath;
  }
}
