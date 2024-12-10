import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:pizza_boys/utils/constants/colors.dart';

class AppNotificationIcon extends StatelessWidget {
  const AppNotificationIcon({
    super.key,
    required this.textTheme,
    required this.iconColor,
    required this.onPressed,
  });

  final TextTheme textTheme;
  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
            onPressed: onPressed,
            icon:  Icon(
              Iconsax.notification,
              color: iconColor,
            ),
          ),
        ),
        Positioned(
          right: 7,
          top: 7,
          child: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
                color: TColors.black, borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                "2",
                style: textTheme.labelLarge!.apply(
                  color: TColors.white,
                  fontSizeFactor: 0.5,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
