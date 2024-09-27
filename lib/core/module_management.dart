// import 'package:alice/alice.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:v_office_base/base/share_reference_manager.dart';
import 'package:v_office_base/base/utils/device_services.dart';
import 'package:v_office_base/base/widget/loading_overlay_custom.dart';
import 'package:v_office_base/base/widget/toast_widget.dart';
import 'package:v_office_base/core/app_services/app_services.dart';
import 'package:v_office_base/core/app_services/bottom_bar_cubit.dart';
import 'package:v_office_base/core/app_services/config_service.dart';
import 'package:v_office_base/core/app_services/message_service.dart';
import 'package:v_office_base/core/app_services/navigation_service.dart';
import 'package:v_office_base/core/base_module.dart';
import 'package:v_office_base/core/networking/http_services.dart';
import 'package:v_office_base/core/networking/network.dart';
import 'package:v_office_base/generated/l10n.dart';

abstract class Argument {
  factory Argument.fromMap(Map<String, dynamic> map) =>
      throw UnimplementedError();
  Map<String, dynamic> toMap();
}

class DefaultRoute {
  static Route<dynamic> notFound() => MaterialPageRoute<void>(
      builder: (_) =>
          const Scaffold(body: Center(child: Text('Page not found !'))));

  static Widget splashScreen(Widget? screen) {
    if (screen != null) {
      return screen;
    } else {
      return const Scaffold(body: Center(child: Text('Hello')));
    }
  }
}

Route<dynamic> getPageRoute(Widget widget, RouteSettings settings) {
  return MaterialPageRoute(builder: (_) => widget, settings: settings);
}

class ModuleManagement {
  factory ModuleManagement() {
    return _singleton;
  }

  ModuleManagement._internal();

  static final ModuleManagement _singleton = ModuleManagement._internal();

  final List<BaseModule> _modules = <BaseModule>[];

  final GetIt serviceLocator = GetIt.instance;

  void addModules(List<BaseModule> modules) {
    _modules.addAll(modules);
  }

  List<BaseModule> getModules() => _modules;

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    for (final BaseModule module in _modules) {
      if ((Uri.parse(settings.name ?? '').path).contains(module.modulePath())) {
        return module.onGenerateRoute(settings);
      }
    }

    return DefaultRoute.notFound();
  }

  List<LocalizationsDelegate<dynamic>> localizationsDelegates() {
    final result = <LocalizationsDelegate<dynamic>>[];
    result.addAll(
      [
        const AppLocalizationDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
    );

    for (final BaseModule module in _modules) {
      result.addAll(module.localizationsDelegates());
    }

    return result;
  }

  Future<void> injectDependencies() async {
    serviceLocator.registerLazySingleton(() => NavigationService());

    final sharedPreferences = await SharedPreferences.getInstance();

    serviceLocator.registerLazySingleton(
      () => SharedPreferencesManager(sharedPreferences: sharedPreferences),
    );

    serviceLocator.registerLazySingleton(
      () => AppCubit(
        const AppState<AppTheme, AppLanguage>(
          appTheme: AppTheme.light,
          appLanguage: AppLanguage.vi,
        ),
      ),
    );

    serviceLocator.registerLazySingleton(() => MessageCenter());

    // serviceLocator.registerLazySingleton(() => LoadingOverlay());

    serviceLocator.registerLazySingleton(() => ToastWidget());

    serviceLocator
        .registerFactory<IBLoadingOverlay>(() => IBLoadingOverlayImpl());

    final config = ConfigService();

    serviceLocator.registerSingleton(config);

    serviceLocator.registerLazySingleton(() => BottomBarCubit());

    serviceLocator.registerLazySingleton(() => DeviceIDService());

    late Network network;

    if (config.isRelease == false) {
      if (config.environmentName == Env.Prod.getName) {
        network = Network.prodNetwork();
      } else if (config.environmentName == Env.Dev.getName) {
        network = Network.devNetwork();
      }
    } else {
      network = Network.prodNetwork();
    }

    //TODO: TEST
    // network = Network.devNetwork();

    GetIt.instance.registerLazySingleton<Network>(() => network);

    final Dio dio = await setupDio(network.domain.apiUrl);

    serviceLocator.registerLazySingleton<Dio>(() => dio);

    for (final BaseModule module in _modules) {
      module.injectServices(serviceLocator);
    }
  }
}
