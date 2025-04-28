import 'package:clean_chat/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class AppShadowContainer extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final Color borderColor;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? shadowColor;
  final Border? border;
  final double? height;
  final double? width;

  const AppShadowContainer({
    super.key,
    required this.child,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.transparent,
    this.borderRadius,
    this.margin,
    this.padding,
    this.shadowColor,
    this.border,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: border ?? Border.all(color: borderColor),
        borderRadius: borderRadius,
        boxShadow: [
          BoxShadow(
            color: shadowColor ?? AppColor.black10Opacity,
            offset: const Offset(0, 2),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: child,
    );
  }
}
