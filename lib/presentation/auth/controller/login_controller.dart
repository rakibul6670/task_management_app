import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_app/core/services/auth_api_services.dart';
import 'package:task_app/core/services/local_storage.dart';
import 'package:task_app/core/utils/validation.dart';

import '../../../core/utils/snackbar_utils.dart';
import '../../../data/models/auth_models.dart';

class LoginController extends GetxController{

  //---------------- Form Key for validation form ---------
  final formKey=GlobalKey<FormState>();

  //-------------Controller -------------
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();

  //---------------- error message ----------
  final RxString emailError ="".obs;
  final RxString passwordError = ''.obs;

  //-------------------- Password obscure ----
  RxBool isObscure =true.obs;

  //-------------------Indicator Loading --------
  RxBool isLoading =false.obs;


  //--------------------Local Storage Instance-----
  final LocalStorage localStorage =LocalStorage();

  @override
  void onInit(){
    super.onInit();
    localStorage.init();
  }




//============================ Validate login ===========
  Future<void> validateLogin() async{
    try{
      isLoading.value =true;

      emailError.value =Validation.emailValidator(emailController.text.trim()) ??'';
      passwordError.value =Validation.passwordValidator(passwordController.text.trim())?? "";

      if(emailError.value.isEmpty && passwordError.value.isEmpty){
        //================= Login ========
        await login();

      }
      else{

      }
    }
    catch(e){
      print(e);
    }
    finally{
      isLoading.value=false;
    }

  }



 // =======================Login ============
 Future<void> login() async{
    try{
      List<AuthModels> allUser = await AuthApiServices.getUser();

       // List<Map<String,dynamic>> allUser =List<Map<String,dynamic>>.from(response);

        final matchUser=allUser.firstWhereOrNull((user)=>
          user.email.toLowerCase() ==emailController.text.trim().toLowerCase() &&
          user.password.toLowerCase() == passwordController.text.trim().toLowerCase()
        );


        if(matchUser != null){
          SnackbarUtil.showSuccess("Login Success", "Welcome ${matchUser.name}, have a productive day! 😊");
          //---------------Navigate to dashboard ------------
          Get.offNamed("/dashboard");

          //--------------Login status value set ----------
          localStorage.setLoggedIn(true);
          localStorage.setUserName(matchUser.name);
          localStorage.setUserEmail(matchUser.email);

        }
        else{
          SnackbarUtil.showError("Login Failed", "Email or password didn't match.");
        }
      }

    catch(e){
      SnackbarUtil.showError("Error", "User Data fetch error : $e");
    }
}


}