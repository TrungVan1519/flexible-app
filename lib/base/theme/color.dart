// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:v_office_base/base/theme/vo_color.dart';

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.bgPrimary,
    required this.bgSecondary,
    required this.transparent,
    required this.primary,
    required this.primaryVariant,
    required this.secondary,
    required this.secondaryVariant,
    required this.background,
    required this.surface,
    required this.error,
    required this.fieldRequired,
    required this.onPrimary,
    required this.onSecondary,
    required this.onBackground,
    required this.onSurface,
    required this.onError,
    required this.uiElementColor,
    required this.neutral1,
    required this.neutral2,
    required this.neutral3,
    required this.neutral4,
    required this.neutral5,
    required this.neutral6,
    required this.neutral7,
    required this.neutral8,
    required this.neutral9,
    required this.neutral10,
    required this.neutral11,
    required this.frameColor,
    required this.lmKeyboardLighter,
    required this.lmToastBackground,
    required this.lmNoteBackground,
    required this.lmSelectTextBackground,
    required this.neutralBlue,
    required this.neutralGreen,
    required this.neutralRed,
    required this.primary10,
    required this.neutralPrimary,
    required this.primary70,
    required this.primary50,
  });

  final Color transparent;

  final Color primary;

  final Color primary10;

  final Color neutralPrimary;

  final Color primary70;

  final Color primary50;

  final Color primaryVariant;

  final Color secondary;

  final Color secondaryVariant;

  final Color background;

  final Color bgPrimary;

  final Color bgSecondary;

  final Color surface;

  final Color error;

  final Color fieldRequired;

  final Color onPrimary;

  final Color onSecondary;

  final Color onBackground;

  final Color onSurface;

  final Color onError;

  final Color lmKeyboardLighter;

  final Color lmToastBackground;

  final Color lmNoteBackground;

  final Color lmSelectTextBackground;

  /// Figma use

  final Color uiElementColor;

  final Color neutral1;

  final Color neutral2;

  final Color neutral3;

  final Color neutral4;

  final Color neutral5;

  final Color neutral6;

  final Color neutral7;

  final Color neutral8;

  final Color neutral9;

  final Color neutral10;

  final Color neutral11;

  final Color frameColor;

  final Color neutralRed;

  final Color neutralGreen;

  final Color neutralBlue;

  @override
  ThemeExtension<CustomColors> lerp(
      ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }

    return CustomColors(
      transparent: Color.lerp(transparent, other.transparent, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      primaryVariant: Color.lerp(primaryVariant, other.primaryVariant, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      secondaryVariant:
          Color.lerp(secondaryVariant, other.secondaryVariant, t)!,
      background: Color.lerp(background, other.background, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      error: Color.lerp(error, other.error, t)!,
      fieldRequired: Color.lerp(fieldRequired, other.fieldRequired, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      onError: Color.lerp(onError, other.onError, t)!,
      uiElementColor: Color.lerp(uiElementColor, other.uiElementColor, t)!,
      neutral1: Color.lerp(neutral1, other.neutral1, t)!,
      neutral2: Color.lerp(neutral2, other.neutral2, t)!,
      neutral3: Color.lerp(neutral3, other.neutral3, t)!,
      neutral4: Color.lerp(neutral4, other.neutral4, t)!,
      neutral5: Color.lerp(neutral5, other.neutral5, t)!,
      neutral6: Color.lerp(neutral6, other.neutral6, t)!,
      neutral7: Color.lerp(neutral7, other.neutral7, t)!,
      neutral8: Color.lerp(neutral8, other.neutral8, t)!,
      neutral9: Color.lerp(neutral9, other.neutral9, t)!,
      neutral10: Color.lerp(neutral10, other.neutral10, t)!,
      neutral11: Color.lerp(neutral11, other.neutral11, t)!,
      frameColor: Color.lerp(frameColor, other.frameColor, t)!,
      neutralBlue: Color.lerp(neutralBlue, other.neutralBlue, t)!,
      neutralRed: Color.lerp(neutralRed, other.neutralRed, t)!,
      neutralGreen: Color.lerp(neutralGreen, other.neutralGreen, t)!,
      lmKeyboardLighter:
          Color.lerp(lmKeyboardLighter, other.lmKeyboardLighter, t)!,
      lmToastBackground:
          Color.lerp(lmToastBackground, other.lmToastBackground, t)!,
      lmNoteBackground:
          Color.lerp(lmNoteBackground, other.lmNoteBackground, t)!,
      lmSelectTextBackground:
          Color.lerp(lmSelectTextBackground, other.lmSelectTextBackground, t)!,
      primary10: Color.lerp(primary10, other.primary10, t)!,
      bgPrimary: Color.lerp(bgPrimary, other.bgPrimary, t)!,
      bgSecondary: Color.lerp(bgSecondary, other.bgSecondary, t)!,
      neutralPrimary: Color.lerp(neutralPrimary, other.neutralPrimary, t)!,
      primary70: Color.lerp(primary70, other.primary70, t)!,
      primary50: Color.lerp(primary70, other.primary70, t)!,
    );
  }

  static const light = CustomColors(
    transparent: Colors.transparent,
    primary: VOColors.lmPrimary,
    primaryVariant: VOColors.lmSecondaryLighter,
    secondary: VOColors.lmPrimary,
    bgSecondary: VOColors.lmSecondary,
    background: VOColors.frameLightColor,
    secondaryVariant: VOColors.grey2,
    bgPrimary: VOColors.lmPrimary,
    surface: VOColors.white,
    error: VOColors.red2,
    fieldRequired: VOColors.red13,
    onPrimary: VOColors.primaryLightTextColor,
    onSecondary: VOColors.white,
    onBackground: VOColors.primaryLightTextColor,
    onSurface: VOColors.primaryLightTextColor,
    onError: VOColors.white,
    uiElementColor: VOColors.uiElementLightColor,
    lmKeyboardLighter: VOColors.lmKeyboardLighter,
    lmToastBackground: VOColors.lmToastBackground,
    lmNoteBackground: VOColors.lmNoteBackground,
    lmSelectTextBackground: VOColors.lmSelectTextBackground,
    neutralBlue: VOColors.neutralBlue,
    neutralRed: VOColors.neutralRed,
    neutralGreen: VOColors.neutralGreen,
    primary50: VOColors.black50,
    neutral1: VOColors.neutralLight1,
    neutral2: VOColors.neutralLight2,
    neutral3: VOColors.neutralLight3,
    neutral4: VOColors.neutralLight4,
    neutral5: VOColors.neutralLight5,
    neutral6: VOColors.neutralLight6,
    neutral7: VOColors.neutralLight7,
    neutral8: VOColors.neutralLight8,
    neutral9: VOColors.neutralLight9,
    neutral10: VOColors.neutralLight10,
    neutral11: VOColors.neutralLight11,
    frameColor: VOColors.frameLightColor,
    primary10: VOColors.black10,
    neutralPrimary: VOColors.lmNeutralPrimary,
    primary70: VOColors.black7,
  );

  static const dark = CustomColors(
    transparent: Colors.transparent,
    primary: VOColors.dmPrimary,
    bgSecondary: VOColors.dmSecondary,
    bgPrimary: VOColors.lmPrimary,
    primaryVariant: VOColors.dmSecondaryLighter,
    secondary: VOColors.dmSecondary,
    secondaryVariant: VOColors.neutralLight3,
    background: VOColors.dmPrimary,
    surface: VOColors.white,
    error: VOColors.red2,
    lmKeyboardLighter: VOColors.lmKeyboardLighter,
    lmToastBackground: VOColors.lmToastBackground,
    neutralBlue: VOColors.neutralBlue,
    neutralRed: VOColors.neutralRed,
    primary50: VOColors.white50,
    neutralGreen: VOColors.neutralGreen,
    lmNoteBackground: VOColors.lmNoteBackground,
    lmSelectTextBackground: VOColors.lmSelectTextBackground,
    fieldRequired: VOColors.red13,
    onPrimary: VOColors.primaryDarkTextColor,
    onSecondary: VOColors.black,
    onBackground: VOColors.primaryDarkTextColor,
    onSurface: VOColors.primaryDarkTextColor,
    onError: VOColors.white,
    uiElementColor: VOColors.uiElementDarkColor,
    neutral1: VOColors.neutralDark1,
    neutral2: VOColors.neutralDark2,
    neutral3: VOColors.neutralDark3,
    neutral4: VOColors.neutralDark4,
    neutral5: VOColors.neutralDark5,
    neutral6: VOColors.neutralDark6,
    neutral7: VOColors.neutralDark7,
    neutral8: VOColors.neutralDark8,
    neutral9: VOColors.neutralDark9,
    neutral10: VOColors.neutralDark10,
    neutral11: VOColors.neutralDark11,
    frameColor: VOColors.frameDarkColor,
    primary10: VOColors.white10,
    primary70: VOColors.white7,
    neutralPrimary: VOColors.dmNeutralPrimary,
  );

  @override
  CustomColors copyWith({
    Color? transparent,
    Color? primary,
    Color? primaryVariant,
    Color? secondary,
    Color? secondaryVariant,
    Color? background,
    Color? surface,
    Color? error,
    Color? fieldRequired,
    Color? onPrimary,
    Color? onSecondary,
    Color? onBackground,
    Color? onSurface,
    Color? onError,
    Color? uiElementColor,
    Color? neutral1,
    Color? neutral2,
    Color? neutral3,
    Color? neutral4,
    Color? neutral5,
    Color? neutral6,
    Color? neutral7,
    Color? neutral8,
    Color? neutral9,
    Color? neutral10,
    Color? neutral11,
    Color? frameColor,
    Color? lmKeyboardLighter,
    Color? lmToastBackground,
    Color? lmNoteBackground,
    Color? lmSelectTextBackground,
    Color? neutralBlue,
    Color? neutralRed,
    Color? neutralGreen,
    Color? bgPrimary,
    Color? bgSecondary,
    Color? primary70,
    Color? primary50,
    Color? neutralPrimary,
    Color? primary10,
  }) {
    return CustomColors(
      transparent: transparent ?? this.transparent,
      primary: primary ?? this.primary,
      primaryVariant: primaryVariant ?? this.primaryVariant,
      secondary: secondary ?? this.secondary,
      secondaryVariant: secondaryVariant ?? this.secondaryVariant,
      background: background ?? this.background,
      surface: surface ?? this.surface,
      error: error ?? this.error,
      fieldRequired: fieldRequired ?? this.fieldRequired,
      onPrimary: onPrimary ?? this.onPrimary,
      onSecondary: onSecondary ?? this.onSecondary,
      onBackground: onBackground ?? this.onBackground,
      onSurface: onSurface ?? this.onSurface,
      onError: onError ?? this.onError,
      uiElementColor: uiElementColor ?? this.uiElementColor,
      neutral1: neutral1 ?? this.neutral1,
      neutral2: neutral2 ?? this.neutral2,
      neutral3: neutral3 ?? this.neutral3,
      neutral4: neutral4 ?? this.neutral4,
      neutral5: neutral5 ?? this.neutral5,
      neutral6: neutral6 ?? this.neutral6,
      neutral7: neutral7 ?? this.neutral7,
      neutral8: neutral8 ?? this.neutral8,
      neutral9: neutral9 ?? this.neutral9,
      neutral10: neutral10 ?? this.neutral10,
      neutral11: neutral11 ?? this.neutral11,
      neutralBlue: neutralBlue ?? this.neutralBlue,
      neutralRed: neutralRed ?? this.neutralRed,
      neutralGreen: neutralGreen ?? this.neutralGreen,
      lmKeyboardLighter: lmKeyboardLighter ?? this.lmKeyboardLighter,
      lmToastBackground: lmToastBackground ?? this.lmToastBackground,
      lmNoteBackground: lmNoteBackground ?? this.lmNoteBackground,
      lmSelectTextBackground:
          lmSelectTextBackground ?? this.lmSelectTextBackground,
      frameColor: frameColor ?? this.frameColor,
      primary10: primary10 ?? this.primary10,
      bgPrimary: bgPrimary ?? this.bgPrimary,
      neutralPrimary: neutralPrimary ?? this.neutralPrimary,
      primary70: primary70 ?? this.primary70,
      primary50: primary50 ?? this.primary50,
      bgSecondary: bgSecondary ?? this.bgSecondary,
    );
  }
}
