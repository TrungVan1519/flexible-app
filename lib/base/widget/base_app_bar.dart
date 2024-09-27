import 'package:flutter/material.dart';
import 'package:v_office_base/base/theme/utils.dart';
import 'package:v_office_base/base/theme/vo_color.dart';
import 'package:v_office_base/base/widget/icon_widget.dart';
import 'package:v_office_base/gen/assets.gen.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    Key? key,
    this.title,
    this.child,
    this.actions,
    this.onBack,
    this.leadingWidth,
    this.titleSpacing,
    this.centerTitle = true,
    this.leadingIcon,
    this.leading,
    this.onHomePress,
    this.isClose,
    this.onClose,
    this.isShowTrailingHome,
    this.automaticallyImplyLeading = true,
    this.flexibleSpace,
    this.backgroundColor,
  }) : super(key: key);

  final String? title;
  final Widget? child;
  final List<Widget>? actions;
  final VoidCallback? onBack;
  final double? leadingWidth;
  final double? titleSpacing;
  final bool centerTitle;
  final String? leadingIcon;
  final Widget? leading;
  final bool? isShowTrailingHome;
  final VoidCallback? onHomePress;
  final bool? isClose;
  final VoidCallback? onClose;
  final bool automaticallyImplyLeading;
  final Color? backgroundColor;
  final Widget? flexibleSpace;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.blue,
      centerTitle: centerTitle,
      leading: _buildLeadingWidget(context),
      elevation: 0,
      flexibleSpace: flexibleSpace,
      leadingWidth: leadingWidth,
      titleSpacing: titleSpacing,
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: child ??
          Text(
            title ?? '',
            style: context.textStyle.bodyTextBold!.copyColor(VOColors.white),
          ),
      actions: isShowTrailingHome == true
          ? [
              IconButton(
                onPressed: onHomePress != null ? onHomePress! : () {},
                icon: IconWidget.ic24(
                  path: leadingIcon ?? Assets.images.icMgmHome,
                ),
              ),
            ]
          : actions,
    );
  }

  Widget? _buildLeadingWidget(BuildContext context) {
    if (!automaticallyImplyLeading) {
      return null;
    }

    if (leading != null) {
      return leading;
    }

    if (isClose == true) {
      return IconButton(
        onPressed: () => onClose?.call(),
        icon: IconWidget.ic24(path: leadingIcon ?? Assets.images.icClose),
      );
    }
    return IconButton(
      onPressed: onBack != null ? onBack! : () => Navigator.maybePop(context),
      icon: IconWidget.ic24(
        color: VOColors.white,
        path: leadingIcon ?? Assets.images.icArrowLineLeft,
      ),
    );
  }
}
