import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  TextStyle get displaySmall => textTheme.displaySmall!;
  TextStyle get displayMedium => textTheme.displayMedium!;
  TextStyle get displayLarge => textTheme.displayLarge!;

  TextStyle get titleSmall => textTheme.titleSmall!;
  TextStyle get titleMedium => textTheme.titleMedium!;
  TextStyle get titleLarge => textTheme.titleLarge!;

  TextStyle get bodySmall => textTheme.bodySmall!;
  TextStyle get bodyMedium => textTheme.bodyMedium!;
  TextStyle get bodyLarge => textTheme.bodyLarge!;

  double get keyboardHeight => MediaQuery.of(this).viewInsets.bottom;

  double get w => MediaQuery.sizeOf(this).width;
  double get h => MediaQuery.sizeOf(this).height;

  double get w1 => w * 1 / 12;
  double get w2 => w * 2 / 12;
  double get w3 => w * 3 / 12;
  double get w4 => w * 4 / 12;
  double get w5 => w * 5 / 12;
  double get w6 => w * 6 / 12;
  double get w7 => w * 7 / 12;
  double get w8 => w * 8 / 12;
  double get w9 => w * 9 / 12;
  double get w10 => w * 10 / 12;
  double get w11 => w * 11 / 12;
  double get w12 => w * 12 / 12;

  double get h1 => h * 1 / 12;
  double get h2 => h * 2 / 12;
  double get h3 => h * 3 / 12;
  double get h4 => h * 4 / 12;
  double get h5 => h * 5 / 12;
  double get h6 => h * 6 / 12;
  double get h7 => h * 7 / 12;
  double get h8 => h * 8 / 12;
  double get h9 => h * 9 / 12;
  double get h10 => h * 10 / 12;
  double get h11 => h * 11 / 12;
  double get h12 => h * 12 / 12;

  void showSnackBar([
    String message = 'none',
    SnackBarBehavior? behavior,
    String actionLabel = 'none',
    Function()? onAction,
  ]) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        content: Text(message),
        behavior: behavior,
        action: SnackBarAction(
          label: actionLabel,
          onPressed: () => onAction?.call(),
        ),
      ),
    );
  }

  Future toNamed(String route) {
    return Navigator.pushNamed(this, route);
  }

  Future to(Widget page) {
    return Navigator.push(this, MaterialPageRoute(builder: (_) => page));
  }

  void back([dynamic result]) {
    Navigator.pop(this, result);
  }
}
