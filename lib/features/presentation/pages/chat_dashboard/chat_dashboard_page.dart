import 'package:clean_chat/core/theme/app_color.dart';
import 'package:clean_chat/core/utils/assets.dart';
import 'package:clean_chat/features/presentation/widgets/app_shadow_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatDashboardPage extends StatelessWidget {
  const ChatDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.yellowLight,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.imageBackgroundLine))),
          ),
          SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 44.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
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
                          border: Border(
                            top: BorderSide(color: AppColor.tealSecondary500),
                            right: BorderSide(color: AppColor.tealSecondary500),
                            bottom:
                                BorderSide(color: AppColor.tealSecondary500),
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
                        Expanded(
                          child: Container(
                            height: 48,
                            margin: EdgeInsets.only(left: 13.5, right: 16.0),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(
                                        0x1A000000), // #0000001A (10% opacity black)
                                    offset: Offset(0, 2), // x=0, y=2 (0px 2px)
                                    blurRadius: 4, // 4px blur
                                    spreadRadius: 0, // No spread (0px)
                                  ),
                                ],
                                border: Border.all(
                                    color: AppColor.tealSecondary200),
                                color: AppColor.yellowPrimary400,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(32),
                                    bottomRight: Radius.circular(32))),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
