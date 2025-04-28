import 'package:equatable/equatable.dart';

abstract class ChatDashboardEvent extends Equatable {
  const ChatDashboardEvent();

  @override
  List<Object?> get props => [];
}

class LoadMessages extends ChatDashboardEvent {}
