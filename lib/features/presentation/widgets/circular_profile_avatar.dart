import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';

class CircularProfileAvatar extends StatelessWidget {
  const CircularProfileAvatar(
      {super.key, required this.radius, required this.imagePath});
  final double radius;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColor.tealSecondary500,
          ),
          boxShadow: const [
            BoxShadow(
              color: AppColor.black10Opacity,
              offset: Offset(0, 3),
              blurRadius: 1,
              spreadRadius: 0,
            )
          ]),
      child: CircleAvatar(
        radius: radius,
        backgroundImage: AssetImage(
          imagePath,
        ),
      ),
    );
  }
}
