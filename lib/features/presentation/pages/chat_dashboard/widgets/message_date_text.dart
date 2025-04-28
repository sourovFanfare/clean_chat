import 'package:clean_chat/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class MessageDateText extends StatelessWidget {
  final int index;
  const MessageDateText({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    Color borderColor = AppColor.tealSecondary300;

    List<Shadow> shadows = [
      Shadow(
          offset: const Offset(-1.0, 1.0), blurRadius: 3.0, color: borderColor),
    ];

    String? date;
    bool shouldShowDate = false;
    if (index == 0) {
      date = "10 July 2025";
      shouldShowDate = true;
    } else if (index == 6) {
      date = "11 July 2025";
      shouldShowDate = true;
    }
    if (shouldShowDate) {
      return Container(
        margin: const EdgeInsets.only(bottom: 16.0),
        child: Text(
          date ?? "",
          style: textTheme.labelSmall?.copyWith(shadows: shadows),
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
