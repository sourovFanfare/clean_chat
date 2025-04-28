import 'package:flutter/material.dart';

class ChatMessageItemModel {
  final String message;
  final String time;
  final String profileImagePath;
  final String userName;
  final Color userNameLabelColor;
  final bool isFromCurrentUser;

  ChatMessageItemModel({
    required this.message,
    required this.time,
    this.profileImagePath = "",
    this.userName = "",
    this.userNameLabelColor = Colors.black,
    this.isFromCurrentUser = false,
  });
}
