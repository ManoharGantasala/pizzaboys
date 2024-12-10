import 'package:flutter/material.dart';
import 'package:pizza_boys/utils/constants/colors.dart';
import 'package:pizza_boys/utils/constants/sizes.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';


class AppSignupForm extends StatelessWidget {
  const AppSignupForm({
    super.key,
    required this.textTheme,
    required this.isDark,
  });

  final TextTheme textTheme;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "FistName",
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwSections),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "LastName",
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          //Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: "UserName",
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          //Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: "Email", prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          //Phone Number
          TextFormField(
            decoration: const InputDecoration(
                labelText: "PhoneNumber",
                prefixIcon: Icon(Iconsax.call)),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields),

          //Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          //Terms and conditions checkbox
          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              const SizedBox(width: TSizes.spaceBetween),
              Flexible(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: "I agree to ",
                          style: textTheme.bodySmall),
                      TextSpan(
                        text: "Privacy Policy",
                        style: textTheme.bodyMedium!.apply(
                          color: isDark
                              ? TColors.white
                              : TColors.primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: isDark
                              ? TColors.white
                              : TColors.primaryColor,
                        ),
                      ),
                      TextSpan(
                          text: " and ", style: textTheme.bodySmall),
                      TextSpan(
                        text: "Terms of use",
                        style: textTheme.bodyMedium!.apply(
                          color: isDark
                              ? TColors.white
                              : TColors.primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: isDark
                              ? TColors.white
                              : TColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}