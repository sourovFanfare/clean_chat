import 'package:clean_chat/core/theme/app_color.dart';
import 'package:clean_chat/features/presentation/blocs/chat_dashboard_event.dart';
import 'package:clean_chat/features/presentation/blocs/chat_dashboard_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/chat_dashboard_bloc.dart';
import 'widgets/chat_app_bar.dart';
import 'widgets/dashboard_background.dart';
import 'widgets/message_date_text.dart';
import 'widgets/message_input_field.dart';
import 'widgets/message_item.dart';

class ChatDashboardPage extends StatelessWidget {
  const ChatDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: ChatDashboardBloc(),
      child: const Scaffold(
        backgroundColor: AppColor.yellowLight,
        body: Stack(
          children: [
            DashboardBackground(),
            ChatDashboardBody(),
          ],
        ),
      ),
    );
  }
}

class ChatDashboardBody extends StatefulWidget {
  const ChatDashboardBody({
    super.key,
  });

  @override
  State<ChatDashboardBody> createState() => _ChatDashboardBodyState();
}

class _ChatDashboardBodyState extends State<ChatDashboardBody> {
  @override
  void initState() {
    BlocProvider.of<ChatDashboardBloc>(context).add(LoadMessages());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ChatAppBar(),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.all(16.0),
                  child: const ChatMessageList()),
            ),
            const MessageInputField()
          ],
        ),
      ),
    );
  }
}

class ChatMessageList extends StatelessWidget {
  const ChatMessageList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatDashboardBloc, ChatDashboardState>(
      builder: (context, state) {
        if (state is ChatDashboardLoaded) {
          return ListView.builder(
            itemCount: state.messages.length,
            itemBuilder: (context, index) {
              final message = state.messages[index];
              return Column(
                children: [
                  MessageDateText(index: index),
                  MessageItem(chatMessage: message),
                ],
              );
            },
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
