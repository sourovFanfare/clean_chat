import 'package:equatable/equatable.dart';

import '../../data/models/chat_message_item_model.dart';

abstract class ChatDashboardState extends Equatable {
  const ChatDashboardState();

  @override
  List<Object?> get props => [];
}

class ChatDashboardInitial extends ChatDashboardState {}

class ChatDashboardLoaded extends ChatDashboardState {
  final List<ChatMessageItemModel> messages;

  const ChatDashboardLoaded({required this.messages});

  @override
  List<Object> get props => [messages];
}
