import 'package:get/get.dart';
import 'package:task_app/app/routes/app_routes.dart';
import 'package:task_app/core/services/local_storage.dart';

class SplashController extends GetxController{

  final LocalStorage localStorage =LocalStorage();

  @override
  void onInit() {
    super.onInit();
    handleNavigation();
  }

  Future<void> handleNavigation() async{
    //--------------prefs instance create -----
    await localStorage.init();


    Future.delayed(Duration(seconds: 3),(){

      final isIntroSeen = localStorage.isIntro;
      final isLoggedIn = localStorage.isLoggedIn;


      if(!isIntroSeen){
        Get.offNamed(AppRoutes.intro);
      }
     else if(!isLoggedIn){
        Get.offNamed(AppRoutes.login);
      }
      else{
        Get.offNamed(AppRoutes.dashboard);
      }
    });
  }

}