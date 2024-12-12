import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_boys/app/common/widgets/app_search_container.dart';
import 'package:pizza_boys/app/common/widgets/app_section_heading.dart';
import 'package:pizza_boys/app/common/widgets/items/item_cards/item_card_vertical.dart';
import 'package:pizza_boys/app/modules/home/controllers/home_controller.dart';
import 'package:pizza_boys/app/modules/home/widgets/app_home_food_items.dart';
import 'package:pizza_boys/app/modules/home/widgets/home_app_bar.dart';
import 'package:pizza_boys/app/modules/home/widgets/primary_header_container.dart';
import 'package:pizza_boys/app/modules/home/widgets/promo_slider.dart';
import 'package:pizza_boys/utils/constants/colors.dart';
import 'package:pizza_boys/utils/constants/sizes.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              height: height,
              child: Column(
                children: [
                  HomeAppBar(textTheme: textTheme),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  AppSearchContainer(
                    text: "Search food,drink,desserts",
                    textTheme: textTheme,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        AppSectionHeading(
                          textTheme: textTheme,
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBetween),
                        //FoodItems
                        AppHomeFoodItems(
                            height: height,
                            controller: controller,
                            textTheme: textTheme),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Obx(
                  () => AppPromoSlider(
                    textTheme: textTheme,
                    slides: controller.slides,
                    currentIndex: controller.carousalCurrentIndex.value,
                    onPageChanged: (index, reason) {
                      controller.updatePageIndicator(index);
                    },
                  ),
                ),
                const SizedBox(
                  height: TSizes.spaceBetween,
                ),
              ],
            ),
            // Food Items in vertical direction
            GridView.builder(
              itemCount: controller.foodItems.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: TSizes.gridViewSpacing,
                crossAxisSpacing: TSizes.gridViewSpacing,
                mainAxisExtent: 295,
              ),
              itemBuilder: (context, index) {
                final item = controller.foodItems[index];
                return ItemCardVertical(
                  title: item.title,
                  subtitle: item.subTitle,
                  imageUrl: item.imageUrl,
                  price: item.price,
                  rating: item.rating,
                  discount: item.discount,
                );
              },
            ),
          ],
        ),
      ),
    );
  } //
}
