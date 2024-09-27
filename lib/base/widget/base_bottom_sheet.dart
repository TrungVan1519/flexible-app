import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:v_office_base/base/theme/utils.dart';
import 'package:v_office_base/base/widget/icon_widget.dart';
import 'package:v_office_base/gen/assets.gen.dart';

class BottomSheetWidget extends StatelessWidget {
  final Widget child;
  final bool showBack;
  final double topMargin;

  const BottomSheetWidget(
      {Key? key,
      required this.child,
      this.showBack = false,
      this.topMargin = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Container(
        margin: EdgeInsets.only(top: topMargin),
        padding: EdgeInsets.only(
            top: 16, bottom: MediaQuery.of(context).padding.bottom),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
          color: ThemeUtils.color.secondary,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const DragIcon(),
            child,
          ],
        ),
      ),
    ]);
  }
}

Future<T?> showCustomBottomSheet<T>(
  BuildContext context,
  Widget child, {
  bool isDismissible = true,
  bool showBack = false,
  double? topMargin,
}) async {
  return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isDismissible: isDismissible,
      isScrollControlled: true,
      builder: (BuildContext bc) {
        return BottomSheetWidget(
          showBack: showBack,
          topMargin: topMargin ?? 0,
          child: child,
        );
      });
}

class DragIcon extends StatelessWidget {
  const DragIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: IconWidget(path: Assets.images.icDragHandle, width: 4, height: 32),
    );
  }
}
