import 'package:flutter/services.dart';
import 'package:v_office_base/base/constant/constant.dart';
import 'package:v_office_base/base/extension/string.dart';

class ConfigService {
  /// Define multiple ENVIRONMENT: Product, Staging, Debug,...
  String get environmentName => appFlavor.orEmpty;

  /// 2 Mode : Debug and Release
  bool get isRelease => const bool.fromEnvironment(PRODUCT_MODE);
}
