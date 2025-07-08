import 'package:get/get.dart';
import 'package:task_app/presentation/intro/controller/intro_controller.dart';

class IntroBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(IntroController());
  }

}