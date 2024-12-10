import 'package:get/get.dart';
import 'package:pizza_boys/app/modules/authentication/controllers/signin_controller.dart';
import 'package:pizza_boys/app/modules/authentication/controllers/signup_controller.dart';
import 'package:pizza_boys/app/modules/home/controllers/home_controller.dart';

import '../controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
    );
    Get.lazyPut<HomeController>(
          () => HomeController(),
    );
    Get.lazyPut<SignupController>(
          () => SignupController(),
    );
    Get.lazyPut<SigninController>(
          () => SigninController(),
    );
  }
}
