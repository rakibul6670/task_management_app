import 'package:get/get.dart';

class SettingsController extends GetxController{


  //=============================== Theme Mode ==================
  List themeModeList = ["Dark","Light"];
  RxString selectedTheme="Light".obs;



  //============================== Language ============================
  List languageList =["English","Bangla",];
  RxString selectedLanguage ="English".obs;


  //============================= Notification Mode ======================
   List notificationOption =["Sound","Vibrate","Silent"];
   RxString selectedNotificationOption ="Sound".obs;


   //=========================== Repeat =====================================
   List repeatOption = ["Once","Daily","Weekly"];
   RxString selectedRepeat ='Once'.obs;

   RxBool enableRemainder =false.obs;







}