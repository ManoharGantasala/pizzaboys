import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:pizza_boys/utils/constants/sizes.dart';

class AppLoginForm extends StatelessWidget {
  const AppLoginForm({
    super.key,
    required this.onSignin,
    required this.onCreateAccount,
    required this.onForgotPassword,
  });

  final VoidCallback onSignin;
  final VoidCallback onCreateAccount;
  final VoidCallback onForgotPassword;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: "Email"),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: "Password",
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),
          //Remember me and Forgot Password Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text("Remember me")
                ],
              ),
              TextButton(
                  onPressed: onForgotPassword,
                  child: const Text("Forgot Password"))
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          //Signin Button
          ElevatedButton(
            onPressed: onSignin,
            child: const Text("Signin"),
          ),
          const SizedBox(
            height: TSizes.spaceBetween,
          ),
          //Create Account Button
          OutlinedButton(
            onPressed: onCreateAccount,
            child: const Text("CreateAccount"),
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          )
        ],
      ),
    );
  }
}