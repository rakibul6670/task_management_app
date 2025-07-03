import 'package:get/get.dart';
import 'package:task_app/presentation/auth/controller/login_controller.dart';
import 'package:task_app/presentation/auth/controller/signup_controller.dart';

class AuthBindings extends Bindings{
  @override
  void dependencies() {

    Get.put(LoginController());
    Get.put(SignupController());

  }

}