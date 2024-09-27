import 'package:flutter/material.dart';
import 'package:v_office_base/base/theme/utils.dart';
import 'package:v_office_base/base/theme/vo_color.dart';

class IButton extends StatefulWidget {
  factory IButton.primaryNormal(
          {required String title,
          VoidCallback? onPress,
          double? fontSize,
          Color? backgroundColor,
          bool isDisable = false,
          double? radius = 8,
          Color? textColor,
          TextStyle? textStyle,
          bool isLoading = false,
          EdgeInsets? contentPadding =
              const EdgeInsets.symmetric(horizontal: 12)}) =>
      IButton(
        title: title,
        color: backgroundColor ?? VOColors.red5,
        onPress: onPress,
        radius: radius,
        textColor: textColor,
        fontSize: fontSize,
        isDisable: isDisable,
        isLoading: isLoading,
        contentPadding: contentPadding,
        textStyle: textStyle,
      );

  factory IButton.primaryLarge(
          {required String title,
          Color? backgroundColor,
          Color? textColor,
          VoidCallback? onPress,
          bool isLoading = false,
          bool isNormal = false,
          bool isDisable = false}) =>
      IButton(
          title: title,
          color: backgroundColor ?? VOColors.red5,
          isNormal: isNormal,
          textColor: textColor,
          onPress: onPress,
          isDisable: isDisable,
          isLoading: isLoading);

  factory IButton.outline(
          {required String title,
          VoidCallback? onPress,
          bool isLoading = false,
          bool outline = true,
          double? radius = 8,
          Color? textColor,
          Color? borderColor,
          Color backgroundColor = VOColors.white,
          bool isDisable = false,
          TextStyle? textStyle,
          EdgeInsets? contentPadding =
              const EdgeInsets.symmetric(horizontal: 16)}) =>
      IButton(
        title: title,
        color: backgroundColor,
        onPress: onPress,
        radius: radius,
        textColor: textColor,
        outline: outline,
        isDisable: isDisable,
        isLoading: isLoading,
        textStyle: textStyle,
        contentPadding: contentPadding,
      );

  final String title;
  final Color color;
  final bool isNormal;
  final Color? textColor;
  final bool isDisable;
  final VoidCallback? onPress;
  final bool isLoading;
  final double? fontSize;
  final EdgeInsetsGeometry? contentPadding;
  final double? height;
  final double? minWidth;
  final double? radius;
  final TextStyle? textStyle;
  final Color? borderColor;
  final bool? outline;

  const IButton({
    Key? key,
    required this.title,
    required this.color,
    this.isNormal = true,
    this.isDisable = false,
    this.isLoading = false,
    this.fontSize,
    this.onPress,
    this.textColor,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 16),
    this.height,
    this.minWidth,
    this.radius = 8,
    this.textStyle,
    this.borderColor,
    this.outline,
  }) : super(key: key);

  @override
  State<IButton> createState() => _IButtonState();
}

class _IButtonState extends State<IButton> {
  Widget _loading() {
    return SizedBox(
      height: widget.isNormal ? 24 : 30.0,
      width: widget.isNormal ? 24 : 30.0,
      child: CircularProgressIndicator(
        strokeWidth: 2,
        color: VOColors.red5,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double height = widget.height ?? (widget.isNormal ? 40 : 48);
    final textStyle = widget.outline == true
        ? ThemeUtils.textStyle.mediumTextRegular
        : ThemeUtils.textStyle.mediumTextMedium;
    return Opacity(
      opacity: widget.isDisable ? 0.3 : 1,
      child: Material(
        borderRadius: BorderRadius.circular(widget.radius ?? 24),
        color: widget.color,
        child: InkWell(
          onTap: () {
            if (!(widget.isDisable || widget.isLoading) &&
                widget.onPress != null) {
              widget.onPress!();
            }
          },
          radius: widget.radius ?? 24,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: widget.minWidth ?? 88,
            ),
            child: Container(
              padding: widget.contentPadding,
              decoration: BoxDecoration(
                  // color: widget.color,
                  borderRadius: BorderRadius.circular(widget.radius ?? 24),
                  border: widget.outline == true
                      ? Border.all(color: VOColors.red5)
                      : null),
              height: height,
              child: Center(
                  child: widget.isLoading
                      ? _loading()
                      : Text(
                          widget.title,
                          textAlign: TextAlign.center,
                          style: widget.textStyle ??
                              textStyle!.copyWith(
                                color: widget.textColor ??
                                    ThemeUtils.color.onPrimary.withOpacity(1),
                                fontSize: widget.fontSize,
                              ),
                        )),
            ),
          ),
        ),
      ),
    );
  }
}
