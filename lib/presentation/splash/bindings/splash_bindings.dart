import 'package:get/get.dart';
import 'package:task_app/presentation/splash/conroller/splash_controller.dart';

class SplashBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(SplashController());
  }

}