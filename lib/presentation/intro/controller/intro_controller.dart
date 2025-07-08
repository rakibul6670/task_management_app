import 'package:get/get.dart';
import 'package:task_app/core/services/local_storage.dart';

import '../../../app/routes/app_routes.dart';

class IntroController extends GetxController{

  final LocalStorage localStorage =LocalStorage();
  @override
  void onInit() {
    super.onInit();
    localStorage.init();
  }

  void skip(){
    //localStorage.prefs.setBool("introSeen", true);
    localStorage.setIntroSeen(true);
    Get.offNamed(AppRoutes.login);
  }

  void done(){
   // localStorage.prefs.setBool("introSeen", true);
    localStorage.setIntroSeen(true);
    Get.offNamed(AppRoutes.login);
  }

}