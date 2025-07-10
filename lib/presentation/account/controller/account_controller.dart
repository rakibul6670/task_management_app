import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_app/core/services/auth_api_services.dart';
import 'package:task_app/core/services/local_storage.dart';
import 'package:task_app/presentation/dashboard/controller/dashboard_controller.dart';
import 'package:task_app/presentation/profile/controller/profile_controller.dart';
import '../../../core/utils/snackbar_utils.dart';
import '../../../core/utils/validation.dart';

class AccountController extends GetxController{

  //---------------- Form Key for validation form ---------
  final formKey=GlobalKey<FormState>();

  //-------------Controller -------------
  final TextEditingController nameController =TextEditingController();
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();

  //---------------- error message ----------
   final RxString nameError ="".obs;
   RxString emailError ="".obs;
   RxString passwordError = ''.obs;

  //-------------------- Password obscure ----
  RxBool isObscure =true.obs;

  //----------------for loading indicator show --------
  RxBool isLoading =false.obs;

  //-------------------profile image set ---------
  RxBool isMale =true.obs;

  //-------------------profile selected -----
  RxBool profileSelect=true.obs;

  //---------------local storage ------
  final LocalStorage localStorage =LocalStorage();

  //-----------------Profile Controller ------
  final ProfileController profileController=Get.find<ProfileController>();
  //-----------------Dashboard Controller ------
 // final DashboardController dashboardController =Get.find<DashboardController>();

  @override
  void onInit(){
    super.onInit();
    localStorage.init();
  }

  void validateEditAccount(){
    nameError.value = Validation.nameValidator(nameController.text.trim()) ?? "";
    emailError.value = Validation.emailValidator(emailController.text.trim()) ?? "";
    passwordError.value = Validation.passwordValidator(passwordController.text.trim()) ?? "";



    if(nameError.value.isEmpty && emailError.value.isEmpty && passwordError.value.isEmpty){
     updateAccount();
    }

  }



  //-----------------------Update Account ---------
  void updateAccount(){
    try{
      isLoading.value =true;

      final response =AuthApiServices.updateUser({
        "name":nameController.text,
        "email":emailController.text,
        "password": passwordController.text,
      },localStorage.userId);

      if(response != null){

        localStorage.setUserName(nameController.text);
        localStorage.setUserEmail(emailController.text);

        profileController.userName.value = nameController.text;
        profileController.userEmail.value = emailController.text;



        SnackbarUtil.showSuccess("Account Update ", "Successful");
      }
      else{
        SnackbarUtil.showInfo("Account Update", "Failed");
      }
    }
    catch(e){
      SnackbarUtil.showError("Account Update Error", "$e");

    }
    finally{
      isLoading.value =false;
    }
  }

}