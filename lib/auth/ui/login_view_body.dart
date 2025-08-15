import 'package:flutter/material.dart';
import 'package:study_planner_app/core/theme/app_colors.dart';
import 'package:study_planner_app/core/utils/context_extension.dart';
import 'package:study_planner_app/core/utils/custom_button.dart';
import 'package:study_planner_app/core/utils/custom_text_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Welcome to Study Planner!',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 24),
          CustomTextFormField(
            hintText: 'Email',
            controller: TextEditingController(),
          ),
          const SizedBox(height: 12),
          CustomTextFormField(
            hintText: 'Password',
            controller: TextEditingController(),
          ),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () {},
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
                decorationThickness: 1.5,
                decorationColor: AppColors.textColor,
              ),
            ),
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            child: CustomButton(
              onPressed: () {},
              text: 'Login',
              btnColor: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: context.height * 0.38),
          Align(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Don\'t have an account? Sign up',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1.5,
                  decorationColor: AppColors.textColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
