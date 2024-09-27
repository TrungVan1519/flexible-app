import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:v_office_base/core/base_module.dart';
import 'package:v_office_base/core/module_management.dart';
import 'package:v_office_base/presentation/dashboard/screen/dashboard_screen.dart';
import 'package:v_office_base/presentation/dashboard/utils/dashboard_contants.dart';

class DashboardModule extends BaseModule {
  @override
  void injectServices(GetIt getIt) {
    //todo
  }

  @override
  List<LocalizationsDelegate> localizationsDelegates() {
    return [];
  }

  @override
  String modulePath() {
    return DashboardConst.modulePath;
  }

  @override
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case DashboardConst.dashboardScreen:
        return getPageRoute(const DashboardScreen(), settings);
    }

    return DefaultRoute.notFound();
  }
}
