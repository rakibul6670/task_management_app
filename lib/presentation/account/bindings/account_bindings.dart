import 'package:get/get.dart';
import 'package:task_app/presentation/account/controller/account_controller.dart';
import 'package:task_app/presentation/profile/controller/profile_controller.dart';

class AccountBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(AccountController());
    Get.put(ProfileController());
  }

}