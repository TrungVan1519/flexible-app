import 'package:flutter/services.dart';
import 'package:v_office_base/base/constant/constant.dart';
import 'package:v_office_base/base/extension/extension.dart';
import 'package:v_office_base/base/extension/string.dart';

class ConfigService {
  /// Define multiple ENVIRONMENT: Product, Staging, Debug,...
  String get environmentName {
    return appFlavor.orEmpty;
  }

  /// 2 Mode : Debug and Release
  bool get isRelease {
    return const bool.fromEnvironment(PRODUCT_MODE);
  }
}
