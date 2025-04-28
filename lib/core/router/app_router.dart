import 'package:clean_chat/core/router/route_path.dart';
import 'package:clean_chat/features/presentation/pages/chat_dashboard/chat_dashboard_page.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppRouter {
  final router = GoRouter(routes: [
    GoRoute(
      path: RoutePath.chatDashboard,
      builder: (context, state) => const ChatDashboardPage(),
    )
  ]);
}
