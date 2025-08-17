import 'package:go_router/go_router.dart';
import 'package:study_planner_app/auth/ui/login_view.dart';
import 'package:study_planner_app/auth/ui/signup_view.dart';
import 'package:study_planner_app/core/routing/routes.dart';

class AppRouting {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const LoginView()),
      GoRoute(
        path: Routes.signupView,
        builder: (context, state) => const SignupView(),
      ),
    ],
  );
}
