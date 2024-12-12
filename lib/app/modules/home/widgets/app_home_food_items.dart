import 'package:flutter/material.dart';
import 'package:pizza_boys/app/common/widgets/image_widgets/vertical_image.dart';
import 'package:pizza_boys/app/modules/home/controllers/home_controller.dart';
import 'package:pizza_boys/utils/constants/colors.dart';

class AppHomeFoodItems extends StatelessWidget {
  const AppHomeFoodItems({
    super.key,
    required this.height,
    required this.controller,
    required this.textTheme,
  });

  final double height;
  final HomeController controller;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height/8,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: controller.foodMap.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return AppVerticalImage(
            textTheme: textTheme,
            image: controller.foodMap.values.elementAt(index),
            title: controller.foodMap.keys.elementAt(index),
            backgroundColor: TColors.white,
          );
        },
      ),
    );
  }
}