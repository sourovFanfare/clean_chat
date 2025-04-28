import 'package:flutter/material.dart';

class MessageDateText extends StatelessWidget {
  final int index;
  const MessageDateText({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

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
          style: textTheme.labelSmall,
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
