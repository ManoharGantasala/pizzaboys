import 'package:flutter/material.dart';
import 'package:pizza_boys/utils/constants/colors.dart';
import 'package:pizza_boys/utils/constants/sizes.dart';
import 'package:pizza_boys/utils/device/device_utility.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class AppSearchContainer extends StatelessWidget {
  const AppSearchContainer({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: TSizes.defaultSpace),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
            color: TColors.white,
            borderRadius:
            BorderRadius.circular(TSizes.cardRadius),
            border: Border.all(color: TColors.grey)),
        child:  Row(
          children: [
            const Icon(
              Iconsax.search_normal_copy,
              color: TColors.darkerGrey,
            ),
            const SizedBox(width: TSizes.spaceBetween),
            Text("Search food,drink,desserts",style: textTheme.bodySmall,)
          ],
        ),
      ),
    );
  }
}