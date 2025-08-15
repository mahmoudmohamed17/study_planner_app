import 'package:flutter/material.dart';
import 'package:study_planner_app/core/theme/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
  });
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText is required';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.textColor,
        ),
        fillColor: AppColors.containerColor,
        contentPadding: const EdgeInsets.all(16),
        filled: true,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: Colors.transparent),
  );
}
