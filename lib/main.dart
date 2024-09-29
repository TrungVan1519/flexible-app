import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
// ignore: unused_import
import 'package:shared_preferences/shared_preferences.dart';
import 'package:v_office_base/base/extension/pair.dart';
import 'package:v_office_base/base/theme/app_theme.dart';
import 'package:v_office_base/base/widget/toast_widget.dart';
import 'package:v_office_base/core/app_services/app_services.dart';
import 'package:v_office_base/core/app_services/bottom_bar_cubit.dart';
import 'package:v_office_base/core/module_management.dart';
import 'package:v_office_base/core/networking/interceptor/curl_interceptor.dart';
import 'package:v_office_base/core/networking/interceptor/error_interceptor.dart';
import 'package:v_office_base/core/networking/network.dart';
import 'package:v_office_base/core/notification/fcm_service.dart';
import 'package:v_office_base/firebase_options.dart';
import 'package:v_office_base/generated/l10n.dart';
import 'package:v_office_base/presentation/dashboard/dashboard_module.dart';
import 'package:v_office_base/presentation/home/home_module.dart';
import 'package:v_office_base/presentation/login/login_module.dart';
import 'package:v_office_base/presentation/splash/cubit/splash_cubit.dart';
import 'package:v_office_base/presentation/splash/screen/splash_screen.dart';

typedef AppSetting = AppState<AppTheme, AppLanguage>;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ModuleManagement().addModules([
    LoginModule(),
    DashboardModule(),
    HomeModule(),
  ]);

  await ModuleManagement().injectDependencies();

  final Dio dio = GetIt.instance.get();

  dio.options.baseUrl = GetIt.instance.get<Network>().domain.apiUrl;

  dio.interceptors.addAll([
    CurlInterceptor(),
    LogInterceptor(requestBody: true, responseBody: true),
    HandleErrorInterceptor(errorTokenExpire: () {
      print("Force logout");
    }),
  ]);

  //register notification
  await FCMService.instance.initialize(DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final localizationsDelegates = ModuleManagement().localizationsDelegates();

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 500), () {
      GetIt.instance<ToastWidget>().registerContext();
    });

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ));
    }

    localizationsDelegates.add(VOLocale.delegate);

    //register splashCubit
    GetIt.instance.registerFactory(() => SplashCubit());

    _loadAppConfig();

    super.initState();
  }

  void _loadAppConfig() {
    final AppCubit cubit = GetIt.instance.get();

    final Pair setting = cubit.getDefault();

    cubit.applySetting(theme: setting.right, language: setting.left);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: GetIt.instance<AppCubit>()),
        BlocProvider.value(value: GetIt.instance<BottomBarCubit>()),
      ],
      child: BlocBuilder<AppCubit, AppSetting>(
        builder: (context, state) {
          Locale locale = Locale(AppLanguage.en.name, "");
          if (state.appLanguage == AppLanguage.vi) {
            locale = Locale(AppLanguage.vi.name, "");
          }
          return MaterialApp(
            title: 'Base VO',
            onGenerateRoute: (settings) =>
                ModuleManagement().onGenerateRoute(settings),
            localizationsDelegates: localizationsDelegates,
            locale: locale,
            theme: state.appTheme.data,
            supportedLocales: const [
              Locale('en', ""), // English, no country code
              Locale('vi', ""),
            ],
            home: MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => GetIt.instance<SplashCubit>(),
                ),
              ],
              // ignore: prefer_const_constructors
              child: SplashScreen(),
            ),
          );
        },
      ),
    );
  }
}
