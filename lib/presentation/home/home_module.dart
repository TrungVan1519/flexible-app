import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:v_office_base/core/base_module.dart';
import 'package:v_office_base/core/module_management.dart';
import 'package:v_office_base/presentation/home/di/home_di.dart';
import 'package:v_office_base/presentation/home/screen/home_screen.dart';
import 'package:v_office_base/presentation/home/utils/home_const.dart';

class HomeModule extends BaseModule {
  @override
  void injectServices(GetIt getIt) {
    HomeDI.injectServices(getIt);
  }

  @override
  List<LocalizationsDelegate> localizationsDelegates() {
    return [];
  }

  @override
  String modulePath() {
    throw HomeConst.modulePath;
  }

  @override
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeConst.homeScreen:
        return getPageRoute(const HomeScreen(), settings);
    }

    return DefaultRoute.notFound();
  }
}
