import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

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

  //-------------------profile image set ---------
  RxBool isMale =true.obs;

  void editAccount(){
    nameError.value = Validation.nameValidator(nameController.text.trim())!;
    emailError.value = Validation.nameValidator(emailController.text.trim())!;
    passwordError.value = Validation.nameValidator(passwordController.text.trim())!;

    if(nameError.isNotEmpty && emailError.isNotEmpty && passwordError.isNotEmpty){
     SnackbarUtil.showSuccess("Account Update ", "Successful");
    }

  }

}