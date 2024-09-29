import 'package:flutter/material.dart';

class NavigationService {
  BuildContext get navigatorContext =>
      GlobalKey<NavigatorState>().currentState!.context;
}
