import 'package:go_router/go_router.dart';
import 'package:study_planner_app/auth/ui/login_view.dart';

class AppRouting {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const LoginView()),
    ],
  );
}
