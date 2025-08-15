import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

AppBar buildAppBar(
    BuildContext context, {
    required String title,
    bool isArrowBack = false,
  }) {
    return AppBar(
      leading: isArrowBack
          ? ElevatedButton(
              onPressed: () => context.pop(),
              child: const Icon(Icons.arrow_back, color: Colors.white),
            )
          : null,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
    );
  }
  