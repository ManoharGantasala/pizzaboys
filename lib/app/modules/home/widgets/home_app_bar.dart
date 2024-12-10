import 'package:flutter/material.dart';
import 'package:pizza_boys/app/common/widgets/appbar/appbar.dart';
import 'package:pizza_boys/app/modules/home/widgets/app_notification_icon.dart';
import 'package:pizza_boys/utils/constants/colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Delicious Food is near to you",
            style:
            textTheme.labelMedium!.apply(color: TColors.grey),
          ),
          Text(
            "Manohar Gantasala",
            style: textTheme.headlineSmall!
                .apply(color: TColors.grey),
          ),
        ],
      ),
      actions: [
        AppNotificationIcon(
          textTheme: textTheme,
          onPressed: (){},
          iconColor: TColors.primaryColor,
        )
      ],
    );
  }
}