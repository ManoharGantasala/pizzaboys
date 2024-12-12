import 'package:flutter/material.dart';
import 'package:pizza_boys/utils/constants/colors.dart';
import 'package:pizza_boys/utils/constants/sizes.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ItemTitleSubText extends StatelessWidget {
  const ItemTitleSubText({
    super.key,
    required this.title,
    required this.subTitle,
    this.maxLines = 2,
    this.textAlign = TextAlign.left,
  });

  final String title;
  final String subTitle;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(left: TSizes.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textTheme.titleLarge,
            overflow: TextOverflow.ellipsis,
            maxLines: maxLines,
            textAlign: textAlign,
          ),
          Text(
            subTitle,
            style: textTheme.labelMedium,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
