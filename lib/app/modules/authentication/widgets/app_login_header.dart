import 'package:flutter/material.dart';

class AppLoginHeader extends StatelessWidget {
  const AppLoginHeader({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Welcome Back", style: textTheme.headlineMedium),
        Text("Where Taste Meets Convenience.",
            style: textTheme.bodyMedium),
      ],
    );
  }
}