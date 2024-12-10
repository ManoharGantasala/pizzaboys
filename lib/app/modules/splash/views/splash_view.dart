import 'package:flutter/material.dart';
import 'package:pizza_boys/utils/constants/image_strings.dart';
import 'package:pizza_boys/utils/helpers/helper_functions.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      // Mounted means that a widget is currently part of the widget tree and it's BuildContext is valid for use.
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/signin');
      }
    });
    return Scaffold(
      backgroundColor:THelperFunctions.isDarkMode(context)? Colors.transparent: Colors.white,
      body:Center(
        child: Image.asset(
          THelperFunctions.isDarkMode(context) ? TImages.darkSplash : TImages.lightSplash,
        ),
      ),
    );
  }
}
