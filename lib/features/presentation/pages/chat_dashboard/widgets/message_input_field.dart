import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/utils/assets.dart';
import '../../../widgets/app_shadow_container.dart';

class MessageInputField extends StatelessWidget {
  const MessageInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShadowContainer(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      offset: const Offset(-2, 2),
      backgroundColor: AppColor.yellowPrimary100,
      borderColor: AppColor.tealSecondary500,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(50),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 16, right: 7.0),
              constraints: const BoxConstraints(
                minHeight: 70,
              ),
              child: TextField(
                minLines: 1,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: "Type a message...",
                  hintStyle: Theme.of(context).textTheme.bodyLarge,
                  border: InputBorder.none,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                  isCollapsed: true,
                ),
              ),
            ),
          ),
          SvgPicture.asset(
            Assets.iconPostBox,
            height: 28,
            width: 32,
          ),
          const SizedBox(width: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                Assets.iconCamera,
                width: 25,
                height: 20,
              ),
              const SizedBox(height: 6.0),
              SvgPicture.asset(
                Assets.iconFlag,
                height: 28,
                width: 18,
              ),
            ],
          ),
          const SizedBox(width: 8.0)
        ],
      ),
    );
  }
}
