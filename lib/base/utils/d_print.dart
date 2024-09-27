import 'package:get_it/get_it.dart';
import 'package:v_office_base/core/app_services/config_service.dart';

void dPrint(Object? object) {
  final config = GetIt.instance.get<ConfigService>();

  if (config.isRelease == false) {
    print(object);
  }
}
