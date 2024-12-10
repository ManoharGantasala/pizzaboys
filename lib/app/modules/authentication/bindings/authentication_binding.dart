import 'package:get/get.dart';

import 'package:pizza_boys/app/modules/authentication/controllers/signin_controller.dart';
import 'package:pizza_boys/app/modules/authentication/controllers/signup_controller.dart';

class AuthenticationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(
      () => SignupController(),
    );
    Get.lazyPut<SigninController>(
      () => SigninController(),
    );
  }
}
