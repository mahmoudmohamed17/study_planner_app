import 'package:flutter/material.dart';
import 'package:study_planner_app/auth/ui/login_view_body.dart';
import 'package:study_planner_app/core/utils/build_app_bar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'Study Planner'),
      body: const SafeArea(
        child: Padding(padding: EdgeInsets.all(24.0), child: LoginViewBody()),
      ),
    );
  }
}
