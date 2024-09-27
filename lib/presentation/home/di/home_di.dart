import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:v_office_base/core/networking/network.dart';
import 'package:v_office_base/presentation/home/cubit/home_cubit.dart';

class HomeDI {
  static injectServices(GetIt getIt) {
    final dio = getIt.get<Dio>();

    final Network network = getIt.get();

    getIt.registerFactory<HomeCubit>(
      () => HomeCubit(),
    );
  }
}
