import 'package:get/get.dart';
import 'package:task_app/app/routes/app_routes.dart';
import 'package:task_app/core/services/local_storage.dart';

class ProfileController extends GetxController{

  final LocalStorage localStorage =LocalStorage();

  RxString userName =''.obs;
  RxString userEmail = ''.obs;
  RxString userProfile ="assets/images/male-user-1.png".obs;


  @override
  void onInit(){
    super.onInit();
    localStorage.init();
    loadUser();
  }

 Future<void> loadUser()async{
    await localStorage.init();
    userName.value = localStorage.userName;
    userEmail.value = localStorage.userEmail;
    userProfile.value=localStorage.userProfile;
  }

  Future<void> logout() async{
    await localStorage.init();
    localStorage.clearUser();
    Get.offAllNamed(AppRoutes.login);
  }
}