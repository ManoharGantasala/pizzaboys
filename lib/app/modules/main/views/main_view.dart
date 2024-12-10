import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pizza_boys/app/modules/authentication/views/signin_view.dart';
import 'package:pizza_boys/app/modules/authentication/views/signup_view.dart';
import 'package:pizza_boys/app/modules/home/views/home_view.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import 'package:pizza_boys/app/modules/main/controllers/main_controller.dart';
import 'package:pizza_boys/utils/constants/colors.dart';
import 'package:pizza_boys/utils/helpers/helper_functions.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Obx(
        ()=> IndexedStack(
          index: controller.selectedIndex.value,
          children: const [
            HomeView(),
            SigninView(),
            SignupView(),
            HomeView(),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (value) {
            controller.selectedIndex.value = value;
          },
          elevation: 0,
          backgroundColor: isDark? TColors.black: TColors.white,
          indicatorColor: isDark? TColors.white.withOpacity(0.1):TColors.black.withOpacity(0.1),
          destinations:  [
            NavigationDestination(icon: Icon (controller.selectedIndex.value==0?Iconsax.home_1:Iconsax.home_copy), label: "Home"),
            NavigationDestination(icon: Icon(controller.selectedIndex.value==1?Iconsax.shop:Iconsax.shop_copy), label: "Store"),
            NavigationDestination(icon: Icon(controller.selectedIndex.value==2?Iconsax.heart:Iconsax.heart_copy), label: "Wishlist"),
            NavigationDestination(icon: Icon(controller.selectedIndex.value==3?Iconsax.user:Iconsax.user_copy), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
