import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  double get w => MediaQuery.sizeOf(this).width;
  double get h => MediaQuery.sizeOf(this).height;

  double get w2 => w * 2 / 12;
  double get w11 => w * 11 / 12;

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
}
