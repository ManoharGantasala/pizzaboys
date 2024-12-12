import 'package:flutter/material.dart';
import 'package:pizza_boys/app/common/styles/shadows.dart';
import 'package:pizza_boys/app/common/widgets/image_widgets/t_rounded_image.dart';
import 'package:pizza_boys/app/common/widgets/items/rating.dart';
import 'package:pizza_boys/app/common/widgets/rounded_container/rounded_container.dart';
import 'package:pizza_boys/app/common/widgets/texts/item_title_sub_text.dart';
import 'package:pizza_boys/utils/constants/colors.dart';
import 'package:pizza_boys/utils/constants/sizes.dart';
import 'package:pizza_boys/utils/helpers/helper_functions.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ItemCardVertical extends StatelessWidget {
  const ItemCardVertical(
      {super.key,
      required this.imageUrl,
      this.discount,
      required this.rating,
      required this.title,
      required this.subtitle,
      required this.price});

  final String imageUrl;
  final String? discount;
  final String rating;
  final String title;
  final String subtitle;
  final String price;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TRoundedContainer(
              radius: TSizes.md,
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //---Thumbnail Image
                  Padding(
                    padding: const EdgeInsets.only(top: 22),
                    child: TRoundedImage(
                      backgroundColor: dark ? TColors.dark : TColors.light,
                      imageUrl: imageUrl,
                      applyImageRadius: true,
                    ),
                  ),
                  //----Sale Tag
                  Positioned(
                    top: 0,
                    child: discount!=null? TRoundedContainer(
                      radius: TSizes.md,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        discount??"0",
                        style: textTheme.labelLarge!.apply(
                            color: dark
                                ? TColors.white.withOpacity(0.9)
                                : TColors.dark.withOpacity(0.9)),
                      )
                    ) : const LimitedBox(),
                  ),

                  //---Rating Icon
                   Positioned(
                    right: 0,
                    child: Rating(
                      foodRating: rating,
                    ),
                  ),

                  //Add Container
                ],
              ),
            ),
            //FoodItem Name
             ItemTitleSubText(
                title: title,
                subTitle:subtitle,
                    ),
            const SizedBox(height: TSizes.spaceBetween),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    price,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.headlineMedium,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.primaryColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(TSizes.cardRadius),
                        bottomRight:
                            Radius.circular(TSizes.productImageRadius)),
                  ),
                  child: const SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: TColors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
