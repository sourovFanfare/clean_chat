import 'package:clean_chat/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class AppShadowContainer extends StatelessWidget {
  final Widget? child;
  final Color? backgroundColor;
  final Color borderColor;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? shadowColor;
  final Border? border;
  final double? height;
  final double? width;
  final Offset? offset;
  final BoxConstraints? constraints;

  const AppShadowContainer({
    super.key,
    this.child,
    this.backgroundColor,
    this.borderColor = Colors.transparent,
    this.borderRadius,
    this.margin,
    this.padding,
    this.shadowColor,
    this.border,
    this.height,
    this.width,
    this.offset,
    this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      height: height,
      width: width,
      constraints: constraints,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: border ?? Border.all(color: borderColor),
        borderRadius: borderRadius,
        boxShadow: [
          BoxShadow(
            color: shadowColor ?? AppColor.black10Opacity,
            offset: offset ?? const Offset(0, 2),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: child,
    );
  }
}
