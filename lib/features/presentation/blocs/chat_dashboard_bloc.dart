import 'dart:async';

import 'package:clean_chat/core/theme/app_color.dart';
import 'package:clean_chat/core/utils/assets.dart';
import 'package:clean_chat/features/data/models/chat_message_item_model.dart';
import 'package:clean_chat/features/presentation/blocs/chat_dashboard_event.dart';
import 'package:clean_chat/features/presentation/blocs/chat_dashboard_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatDashboardBloc extends Bloc<ChatDashboardEvent, ChatDashboardState> {
  ChatDashboardBloc() : super(ChatDashboardInitial()) {
    on<LoadMessages>(_onLoadMessages);
  }

  FutureOr<void> _onLoadMessages(
      LoadMessages event, Emitter<ChatDashboardState> emit) {
    List<ChatMessageItemModel> messages = [];
    messages.addAll(
      [
        ChatMessageItemModel(
          message: "Hi how are you?",
          time: "12:54",
          profileImagePath: Assets.imageLousiana,
          userNameLabelColor: AppColor.tealSecondary500,
          userName: "Lousiana",
        ),
        ChatMessageItemModel(
          message: "@Tommy Feeling ok?",
          time: "12:55",
          profileImagePath: Assets.imageLousiana,
          userNameLabelColor: AppColor.tealSecondary500,
          userName: "Lousiana",
        ),
        ChatMessageItemModel(
          message:
              "Yes im good. thanks for asking. Didn't do much. feeling bit sick after that meal. So just exhausted. watching netflux, 😢",
          time: "13:20",
          profileImagePath: Assets.imageTommy,
          userNameLabelColor: AppColor.darkTeal500,
          userName: "Tommy",
        ),
        ChatMessageItemModel(
          message:
              "Yes, Im well. Had a long day. went hiking with the some people.it was  extremely hot couldn't be bothered in the end. How r U?",
          time: "12:57",
          userNameLabelColor: AppColor.darkTeal500,
          isFromCurrentUser: true,
        ),
        ChatMessageItemModel(
          message:
              "Yes im good. thanks for asking. Didn't do much. feeling bit sick after that meal. So just exhausted. watching netflux",
          time: "13:20",
          profileImagePath: Assets.imageCristofer,
          userNameLabelColor: AppColor.red500,
          userName: "Cristofer",
        ),
        ChatMessageItemModel(
          message: "Hi how are you?",
          time: "12:55",
          profileImagePath: Assets.imageLousiana,
          userNameLabelColor: AppColor.darkTeal500,
          userName: "Lousiana",
        ),
        ChatMessageItemModel(
          message:
              "Yes im good. thanks for asking. Didn't do much. feeling bit sick after that meal. So just exhausted. watching netflux",
          time: "13:20",
          profileImagePath: Assets.imageTommy,
          userNameLabelColor: AppColor.darkTeal500,
          userName: "Tommy",
        ),
        ChatMessageItemModel(
          message:
              "Yes im good. thanks for asking. Didn't do much. feeling bit sick after that meal. So just exhausted. watching netflux",
          time: "13:20",
          profileImagePath: Assets.imageCristofer,
          userNameLabelColor: AppColor.red500,
          userName: "Cristofer",
        ),
        ChatMessageItemModel(
          message:
              "Yes, Im well. Had a long day. went hiking with the some people.it was  extremely hot couldn't be bothered in the end. How r U?",
          time: "12:57",
          userNameLabelColor: AppColor.darkTeal500,
          isFromCurrentUser: true,
        ),
        ChatMessageItemModel(
          message: "Hi how are you?",
          time: "12:54",
          profileImagePath: Assets.imageLousiana,
          userNameLabelColor: AppColor.tealSecondary500,
          userName: "Lousiana",
        ),
      ],
    );

    emit(ChatDashboardLoaded(messages: messages));
  }
}
