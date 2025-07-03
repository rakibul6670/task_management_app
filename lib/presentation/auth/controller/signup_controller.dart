import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_app/core/services/auth_api_services.dart';
import 'package:task_app/core/utils/snackbar_utils.dart';
import 'package:task_app/core/utils/validation.dart';

class SignupController extends GetxController{

  //---------------- Form Key for validation form ---------
  final formKey=GlobalKey<FormState>();

  //-------------Controller -------------
  final TextEditingController nameController =TextEditingController();
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();

  //---------------- error message ----------
  final RxString nameError ="".obs;
  final RxString emailError ="".obs;
  final RxString passwordError = ''.obs;

  //-------------------- Password obscure ----
  RxBool isObscure =true.obs;

  //========================== Validate Signup ============
  void validateSignup(){

    //--------------validation failed hole error message ekhane store hobe ------
    nameError.value=Validation.nameValidator(nameController.text.trim())??"";
    emailError.value=Validation.emailValidator(emailController.text.trim())??"";
    passwordError.value=Validation.passwordValidator(passwordController.text.trim())??"";

    if(nameError.isEmpty && emailError.isEmpty && passwordError.isEmpty){
      //--------------Navigate to login
      signup({
        "name":nameController.text.trim(),
        "email":emailController.text.trim(),
        "password":passwordController.text.trim()
      });

      Get.offNamed("/login");
    }

  }


  //======================= Signup ==============
  void signup(Map<String,dynamic> addUser) async{
    try{
      final response = AuthApiServices.addUser(addUser);
      if(response != null){
        SnackbarUtil.showSuccess("Successful", "Signup");
      }
      else{
        SnackbarUtil.showInfo("Failed", "Something went wrong.Please try again");
      }
    }
    catch(e){
      SnackbarUtil.showError("Error", "Sign up error: $e");

    }
  }


}