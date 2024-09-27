// ignore: import_of_legacy_library_into_null_safe

import 'package:v_office_base/base/constant/constant.dart';
import 'package:v_office_base/core/networking/env/proEnv.dart';

import 'env/devEnv.dart';
import 'env/networkEnv.dart';

enum Env { Dev, Prod }

extension ParseToString on Env {
  String get getName {
    switch (this) {
      case Env.Dev:
        return DEV_ENV;
      case Env.Prod:
        return PROD_ENV;
      default:
        return DEV_ENV;
    }
  }
}

class Network {
  // Init environment
  Env _env = Env.Dev;

  NetworkEnv get domain {
    switch (_env) {
      case Env.Dev:
        return DevEnv();
      case Env.Prod:
        return ProEnv();
    }
  }

  Env get env => _env;

  Network initEnv({required Env newEnv}) {
    _env = newEnv;
    return this;
  }

  static Network devNetwork() => Network().initEnv(newEnv: Env.Dev);

  static Network prodNetwork() => Network().initEnv(newEnv: Env.Prod);
}
