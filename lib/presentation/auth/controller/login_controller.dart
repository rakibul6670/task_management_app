import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_app/core/utils/validation.dart';

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




  void validateLogin(){


    emailError.value =Validation.emailValidator(emailController.text.trim()) ??'';
    passwordError.value =Validation.passwordValidator(passwordController.text.trim())?? "";

    if(emailError.value.isEmpty && passwordError.value.isEmpty){

      //----------------Navigate to dashboard ---
      Get.offNamed("/dashboard");
    }



  }




}