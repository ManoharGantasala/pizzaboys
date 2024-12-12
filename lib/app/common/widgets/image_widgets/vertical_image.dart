import 'package:flutter/material.dart';
import 'package:pizza_boys/utils/constants/colors.dart';
import 'package:pizza_boys/utils/constants/sizes.dart';

class AppVerticalImage extends StatelessWidget {
  const AppVerticalImage({
    super.key,
    required this.textTheme,
    required this.image,
    required this.title,
    this.textColor = TColors.black,
    this.backgroundColor,
    this.onTap,
  });

  final TextTheme textTheme;
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.spaceBetween),
        child: Column(
          children: [
            //Circular Icon
            Container(
              width: 80,
              height: 80,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12)),
              ),
              child: Column(
                children: [
                  Image(
                    height: 42,
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                  Text(
                    title,
                    style: textTheme.labelMedium!.apply(color: textColor),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
