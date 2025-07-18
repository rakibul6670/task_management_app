import 'package:get/get.dart';

import '../../../core/services/local_storage.dart';

class UserController extends GetxController{
  @override
  void onInit(){
    super.onInit();
    profileLoad();
  }


  //===========================User Profile Set ================================
  RxString userProfileImage ="assets/images/male-user-1.png".obs;
  //---------------local storage initialize -------
  final LocalStorage localStorage =LocalStorage();

  //-------------profile data load ----------
  Future<void> profileLoad() async{
    await localStorage.init();
    userProfileImage.value =localStorage.userProfile;

  }

}