import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:v_office_base/core/base_module.dart';
import 'package:v_office_base/core/module_management.dart';
import 'package:v_office_base/presentation/login/cubit/login_cubit.dart';
import 'package:v_office_base/presentation/login/di/login_di.dart';
import 'package:v_office_base/presentation/login/screen/login_screen.dart';
import 'package:v_office_base/presentation/login/utils/login_const.dart';

class LoginModule extends BaseModule {
  @override
  void injectServices(GetIt getIt) {
    LoginDI.injectServices(getIt);
  }

  @override
  List<LocalizationsDelegate> localizationsDelegates() {
    return [];
  }

  @override
  String modulePath() {
    return LoginConst.modulePath;
  }

  @override
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginConst.loginScreen:
        return getPageRoute(
          MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => GetIt.instance<LoginCubit>(),
              ),
            ],
            child: const LoginScreen(),
          ),
          settings,
        );
    }

    return DefaultRoute.notFound();
  }
}
