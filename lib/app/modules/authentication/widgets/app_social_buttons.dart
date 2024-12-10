import 'package:flutter/material.dart';
import 'package:pizza_boys/utils/constants/colors.dart';
import 'package:pizza_boys/utils/constants/image_strings.dart';
import 'package:pizza_boys/utils/constants/sizes.dart';

class AppSocialButtons extends StatelessWidget {
  const AppSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
                width: TSizes.iconMd,
                height: TSizes.iconMd,
                image: AssetImage(TImages.google)),
          ),
        ),
        const SizedBox(width: TSizes.spaceBetween),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
                width: TSizes.iconMd,
                height: TSizes.iconMd,
                image: AssetImage(TImages.facebook)),
          ),
        ),
      ],
    );
  }
}