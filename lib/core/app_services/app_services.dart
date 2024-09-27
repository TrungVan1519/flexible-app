import 'dart:io';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:v_office_base/base/constant/constant.dart';
import 'package:v_office_base/base/extension/cubit.dart';
import 'package:v_office_base/base/extension/pair.dart';
import 'package:v_office_base/base/share_reference_manager.dart';
import 'package:v_office_base/base/theme/app_theme.dart';
import 'package:v_office_base/generated/l10n.dart';

enum AppTheme {
  light,
  dark,
}

enum AppLanguage { en, vi }

extension AppLanguageEx on AppLanguage {
  bool get isEnglish => this == AppLanguage.en;

  String get keyValue {
    switch (this) {
      case AppLanguage.vi:
        return 'vi';
      default:
        return 'en';
    }
  }

  static AppLanguage fromValue(String? value) {
    if (value == AppLanguage.vi.keyValue) {
      return AppLanguage.vi;
    }
    return AppLanguage.en;
  }

  String get displayName {
    switch (this) {
      case AppLanguage.vi:
        return VOLocale.current.vietnamese;
      case AppLanguage.en:
        return VOLocale.current.english;
      default:
        return '';
    }
  }
}

class AppState<T extends AppTheme, V extends AppLanguage> extends Equatable {
  const AppState({required this.appLanguage, required this.appTheme});

  final T appTheme;
  final V appLanguage;

  @override
  List<Object?> get props => <Object?>[appTheme, appLanguage];
}

class AppCubit extends Cubit<AppState<AppTheme, AppLanguage>> {
  AppCubit(AppState<AppTheme, AppLanguage> appState)
      : super(const AppState<AppTheme, AppLanguage>(
            appTheme: AppTheme.light, appLanguage: AppLanguage.vi));

  final SharedPreferencesManager _sharedPreferencesManager =
      GetIt.instance.get();

  String themeToString(AppTheme theme) {
    return theme.keyValue;
  }

  String langToString(AppLanguage language) {
    return language.keyValue;
  }

  Pair getDefault() {
    AppLanguage defaultLanguage = AppLanguage.vi;

    final currentLocale = Platform.localeName;

    if (currentLocale.contains('vi')) {
      defaultLanguage = AppLanguage.vi;
    }

    final String _language = _sharedPreferencesManager.getString(kLanguage) ??
        defaultLanguage.keyValue;

    final String themValue =
        _sharedPreferencesManager.getString(kTheme) ?? AppTheme.light.keyValue;
    final theme = AppThemeEx.fromValue(themValue);

    AppLanguage language = AppLanguage.en;
    if (_language == AppLanguage.vi.keyValue) {
      language = AppLanguage.vi;
    }
    return Pair(language, theme);
  }

  void saveLanguage(String langCode) {
    _sharedPreferencesManager.putString(kLanguage, langCode);
  }

  Future<bool> saveTheme(String themeCode) {
    return SharedPreferences.getInstance().then((SharedPreferences shared) {
      return shared.setString(kTheme, themeCode);
    });
  }

  void changeTheme({required AppTheme theme}) {
    saveTheme(themeToString(theme));
    safeEmit(AppState<AppTheme, AppLanguage>(
        appTheme: theme, appLanguage: state.appLanguage));
  }

  void changeLanguage({required AppLanguage language}) {
    saveLanguage(langToString(language));

    safeEmit(AppState<AppTheme, AppLanguage>(
        appLanguage: language, appTheme: state.appTheme));
  }

  void applySetting({required AppTheme theme, required AppLanguage language}) {
    safeEmit(AppState<AppTheme, AppLanguage>(
        appLanguage: language, appTheme: theme));
  }
}
