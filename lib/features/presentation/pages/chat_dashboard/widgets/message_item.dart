import 'package:clean_chat/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import '../../../../data/models/chat_message_item_model.dart';
import '../../../widgets/app_shadow_container.dart';
import '../../../widgets/circular_profile_avatar.dart';

class MessageItem extends StatelessWidget {
  final ChatMessageItemModel chatMessage;

  const MessageItem({super.key, required this.chatMessage});

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(35.0);
    final isCurrentUserMessage = chatMessage.isFromCurrentUser;
    final borderRadius = chatMessage.isFromCurrentUser
        ? const BorderRadius.only(
            topLeft: radius,
            bottomLeft: radius,
          )
        : const BorderRadius.only(
            topRight: radius,
            bottomRight: radius,
          );

    final backgroundColor = isCurrentUserMessage
        ? AppColor.yellowPrimary400
        : AppColor.yellowPrimary300;

    final containerAlignment =
        isCurrentUserMessage ? Alignment.centerRight : Alignment.centerLeft;

    final textTheme = Theme.of(context).textTheme;

    return Align(
      alignment: containerAlignment,
      child: AppShadowContainer(
        margin: const EdgeInsets.only(bottom: 16.0),
        constraints: const BoxConstraints(minWidth: 257, maxWidth: 257),
        backgroundColor: backgroundColor,
        borderRadius: borderRadius,
        padding: EdgeInsets.only(
            left: isCurrentUserMessage ? 20 : 12.0,
            top: isCurrentUserMessage ? 12 : 8.0,
            bottom: 4),
        borderColor: AppColor.tealSecondary200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!isCurrentUserMessage)
              Container(
                margin: const EdgeInsets.only(bottom: 4.0),
                child: Row(
                  children: [
                    CircularProfileAvatar(
                      imagePath: chatMessage.profileImagePath,
                      radius: 12,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 4, right: isCurrentUserMessage ? 12 : 25),
                        child: Text(
                          chatMessage.userName,
                          style: textTheme.headlineSmall
                              ?.copyWith(color: chatMessage.userNameLabelColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            Container(
                margin: EdgeInsets.only(right: isCurrentUserMessage ? 12 : 20),
                child: Text(chatMessage.message)),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(right: isCurrentUserMessage ? 12 : 27),
                child: Text(
                  chatMessage.time,
                  style: textTheme.labelSmall
                      ?.copyWith(color: AppColor.darkTeal400),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
