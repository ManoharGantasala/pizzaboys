import 'package:flutter/material.dart';
import 'package:pizza_boys/utils/constants/colors.dart';

class AppFormDivider extends StatelessWidget {
  const AppFormDivider({
    super.key,
    required this.isDark,
    required this.textTheme,
  });

  final bool isDark;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Divider(
            color: isDark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 5,
          ),
        ),
        Text(
          "Or Signin with",
          style: textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: isDark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
      ],
    );
  }
}