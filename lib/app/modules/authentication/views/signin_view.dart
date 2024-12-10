import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pizza_boys/app/common/styles/spacing_styles.dart';
import 'package:pizza_boys/app/modules/authentication/widgets/app_form_divider.dart';
import 'package:pizza_boys/app/modules/authentication/widgets/app_login_form.dart';
import 'package:pizza_boys/app/modules/authentication/widgets/app_login_header.dart';
import 'package:pizza_boys/app/modules/authentication/widgets/app_social_buttons.dart';
import 'package:pizza_boys/app/routes/app_pages.dart';
import 'package:pizza_boys/utils/constants/sizes.dart';
import 'package:pizza_boys/utils/helpers/helper_functions.dart';

class SigninView extends GetView {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final isDark = THelperFunctions.isDarkMode(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight,
            //Main Column
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: TSizes.defaultSpace,
                ),
                //Header
                AppLoginHeader(textTheme: textTheme),
                const SizedBox(
                  height: TSizes.spaceBetween,
                ),
                //TextFields Form
                AppLoginForm(
                  onSignin: () {
                    Get.toNamed(Routes.MAIN);
                  },
                  onCreateAccount: () {
                    Get.toNamed(Routes.SIGNUP);
                  },
                  onForgotPassword: () {},
                ),
                //Divider
                AppFormDivider(isDark: isDark, textTheme: textTheme),
                const SizedBox(
                  height: TSizes.spaceBetween,
                ),
                //Footer
                const AppSocialButtons()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
