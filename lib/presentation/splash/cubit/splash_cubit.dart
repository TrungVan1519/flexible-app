import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:v_office_base/base/constant/constant.dart';
import 'package:v_office_base/base/extension/cubit.dart';
import 'package:v_office_base/base/share_reference_manager.dart';
import 'package:v_office_base/base/theme/app_theme.dart';
import 'package:v_office_base/core/app_services/app_services.dart';

import 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState.init());

  AppLanguage curLang = AppLanguageEx.fromValue(
    GetIt.instance<SharedPreferencesManager>().getString(kLanguage),
  );

  void changeLanguage(AppLanguage appLanguage) {
    // todo update app language
    GetIt.instance<AppCubit>().changeLanguage(language: appLanguage);
    safeEmit(SplashState.changeLanguage(appLanguage));
    curLang = appLanguage;
  }

  AppTheme curTheme = AppThemeEx.fromValue(
    GetIt.instance<SharedPreferencesManager>().getString(kTheme),
  );

  void changeTheme(AppTheme appTheme) {
    // todo update app theme
    GetIt.instance<AppCubit>().changeTheme(theme: appTheme);
    safeEmit(SplashState.changeTheme(appTheme));
    curTheme = appTheme;
  }
}
