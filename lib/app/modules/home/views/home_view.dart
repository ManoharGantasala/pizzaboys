import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_boys/app/common/widgets/app_search_container.dart';
import 'package:pizza_boys/app/modules/home/controllers/home_controller.dart';
import 'package:pizza_boys/app/modules/home/widgets/home_app_bar.dart';
import 'package:pizza_boys/app/modules/home/widgets/primary_header_container.dart';
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
                  AppSearchContainer(textTheme: textTheme)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }//
}