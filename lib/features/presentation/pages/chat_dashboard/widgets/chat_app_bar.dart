import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/utils/assets.dart';
import '../../../widgets/app_shadow_container.dart';
import '../../../widgets/circular_profile_avatar.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 44.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _AppBarBackButton(),
          _AppBarProfileDetails(),
        ],
      ),
    );
  }
}

class _AppBarBackButton extends StatelessWidget {
  const _AppBarBackButton();

  @override
  Widget build(BuildContext context) {
    const borderSide = BorderSide(color: AppColor.tealSecondary500);
    return Row(
      children: [
        Opacity(
          opacity: 0.86,
          child: SvgPicture.asset(
            Assets.iconHeadline,
            height: 48,
            width: 22,
          ),
        ),
        AppShadowContainer(
          width: 49.5,
          height: 48,
          backgroundColor: AppColor.yellowPrimary500,
          border: const Border(
            top: borderSide,
            right: borderSide,
            bottom: borderSide,
          ),
          child: Center(
            child: SizedBox(
              height: 22.8,
              width: 12.63,
              child: SvgPicture.asset(
                Assets.iconBack,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _AppBarProfileDetails extends StatelessWidget {
  const _AppBarProfileDetails();

  @override
  Widget build(BuildContext context) {
    const borderRadius = Radius.circular(32);
    return Expanded(
      child: AppShadowContainer(
        height: 48,
        margin: const EdgeInsets.only(left: 13.5, right: 16.0),
        borderColor: AppColor.tealSecondary200,
        backgroundColor: AppColor.yellowPrimary400,
        borderRadius: const BorderRadius.only(
          bottomLeft: borderRadius,
          bottomRight: borderRadius,
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 13, right: 16),
          child: Row(
            children: [
              const CircularProfileAvatar(
                imagePath: Assets.imageGroupPhoto,
                radius: 21,
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: Text(
                  "Tommy's Group",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: AppColor.darkTeal900),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 4.0),
              InkResponse(
                onTap: () {},
                child: SvgPicture.asset(
                  Assets.threeDot,
                  height: 6,
                  width: 21,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
