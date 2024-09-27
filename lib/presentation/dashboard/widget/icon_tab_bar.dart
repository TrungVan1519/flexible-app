import 'package:flutter/widgets.dart';
import 'package:v_office_base/base/extension/extension.dart';
import 'package:v_office_base/base/theme/utils.dart';
import 'package:v_office_base/base/widget/icon_widget.dart';

class IconTabBar extends StatelessWidget {
  const IconTabBar({super.key, required this.path, required this.isActive});

  final String path;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: IconWidget(
        path: path,
        width: 24,
        height: 24,
        color: isActive
            ? ThemeUtils.color.neutralPrimary
            : ThemeUtils.color.neutralGreen,
        lmColor: isActive
            ? ThemeUtils.color.neutralPrimary
            : ThemeUtils.color.primary50,
      ),
    );
  }
}
