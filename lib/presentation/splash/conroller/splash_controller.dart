import 'package:get/get.dart';

class SplashController extends GetxController{

  @override
  void onInit() {
    super.onInit();
    splash();
  }

  void splash(){
    Future.delayed(Duration(seconds: 3),(){
      Get.offNamed("/intro");
    });
  }

}