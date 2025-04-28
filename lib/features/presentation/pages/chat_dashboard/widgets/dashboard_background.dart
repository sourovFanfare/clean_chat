import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class DashboardBackground extends StatelessWidget {
  const DashboardBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imageBackgroundLine),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
