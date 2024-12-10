import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pizza_boys/app/modules/authentication/widgets/app_form_divider.dart';
import 'package:pizza_boys/app/modules/authentication/widgets/app_signup_form.dart';
import 'package:pizza_boys/app/modules/authentication/widgets/app_social_buttons.dart';
import 'package:pizza_boys/app/routes/app_pages.dart';
import 'package:pizza_boys/utils/constants/sizes.dart';
import 'package:pizza_boys/utils/helpers/helper_functions.dart';

class SignupView extends GetView {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text("Let's create your account",
                  style: textTheme.headlineMedium),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              //Form
              AppSignupForm(textTheme: textTheme, isDark: isDark),
              const SizedBox(height: TSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.SIGNIN);
                  },
                  child: const Text("Create Account"),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              AppFormDivider(isDark: isDark, textTheme: textTheme),
              const SizedBox(height: TSizes.spaceBtwSections),
              const AppSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}