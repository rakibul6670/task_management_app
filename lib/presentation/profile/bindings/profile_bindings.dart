import 'package:get/get.dart';
import 'package:task_app/presentation/profile/controller/profile_controller.dart';

class ProfileBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(ProfileController());
  }

}