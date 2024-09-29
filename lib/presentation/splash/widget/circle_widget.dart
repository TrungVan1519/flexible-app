import 'package:flutter/material.dart';
import 'package:v_office_base/base/theme/vo_color.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({super.key, this.bgColor, this.height, this.width});

  final Color? bgColor;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 16,
      height: height ?? 16,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: bgColor ?? VOColors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
