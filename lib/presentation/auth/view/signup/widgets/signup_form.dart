
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/presentation/auth/view/signup/widgets/signup_link.dart';
import 'package:task_app/presentation/auth/view/signup/widgets/social_signup_button.dart';

import '../../../../../shared/widgets/custom_button.dart';
import '../../../../../shared/widgets/custom_text_field.dart';
import '../../../controller/signup_controller.dart';

class SignupForm extends StatelessWidget {
   SignupForm({super.key});

   //----------------- Signup controller initialize
   final SignupController signupController =Get.find<SignupController>();


   @override
  Widget build(BuildContext context) {
     Size size =MediaQuery.sizeOf(context);
    return Form(
        key:signupController.formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //--------------User Name  ---------------------------------
              CustomTextField(
                controller: signupController.nameController,
                fillColor: Color(0xFF190733),
                prefix: Icon(Icons.person,size: 30,color: Colors.white,),
                borderRadius: 20,
                hintText: 'Enter your name ',
                hintTextStyle: TextStyle(
                  color: Colors.white54,
                ),
                inputTextStyle: TextStyle(
                    color: Colors.white
                ),
              ),

              SizedBox(height: 5,),
              //---------------------Name Error Show -------------
              Obx(()=>
              signupController.nameError.value.isNotEmpty
                  ? Text(signupController.nameError.value,
                  style: TextStyle(color: Colors.red, fontSize: 12))
                  : SizedBox.shrink()
              ),

              SizedBox(height: 10,),

              //--------------Email Address -------------------------------
              CustomTextField(
                controller: signupController.emailController,
                fillColor: Color(0xFF190733),
                prefix: Icon(Icons.email_outlined,size: 30,color: Colors.white,),
                borderRadius: 20,
                hintText: 'Enter your Email ',
                hintTextStyle: TextStyle(
                  color: Colors.white54,
                ),
                inputTextStyle: TextStyle(
                    color: Colors.white
                ),
              ),

              SizedBox(height: 5,),
              //---------------------Email Error Show -------------
              Obx(()=>
              signupController.emailError.value.isNotEmpty
                  ? Text(signupController.emailError.value,
                  style: TextStyle(color: Colors.red, fontSize: 12))
                  : SizedBox.shrink()
              ),

              SizedBox(height: 10,),

              //--------------Password -----------------------------------
              Obx(()=>
                  CustomTextField(
                    controller: signupController.passwordController,
                    fillColor: Color(0xFF190733),
                    obscureText: signupController.isObscure.value,
                    prefix: Icon(Icons.password,size: 30,color: Colors.white,),
                    suffix: IconButton(
                        onPressed: (){
                          signupController.isObscure.value = !signupController.isObscure.value;
                        },
                        icon: signupController.isObscure.value
                            ? Icon(Icons.visibility_off,size: 30,color: Colors.white,)
                            : Icon(Icons.visibility,size: 30,color: Colors.white,)
                    ),

                    borderRadius: 20,
                    hintText: 'Enter your Password ',
                    hintTextStyle: TextStyle(
                      color: Colors.white54,
                    ),
                    inputTextStyle: TextStyle(
                        color: Colors.white
                    ),
                  ),
              ),

              SizedBox(height: 5,),
              //---------------------Password Error Show -------------
              Obx(()=>
              signupController.passwordError.value.isNotEmpty
                  ? Text(signupController.passwordError.value,
                  style: TextStyle(color: Colors.red, fontSize: 12))
                  : SizedBox.shrink()
              ),

              SizedBox(height: 10,),

              //------------------- Sign up button --------------------------
              CustomButton(
                onPressed: signupController.validateSignup,
                height: 50,
                width:size.width,
                buttonName: 'Sign up',
                fontSize: 26,
              ),

              SizedBox(height: 15,),




              //-------------------------- Login with ------------------------------------
              Text("or continue with",style: TextStyle(
                  color: Colors.white54
              ),),
              SizedBox(height: 10,),

              //-------------Login with google or facebook ------------------
              SocialSignupButton(),

              SizedBox(
                height: 10,
              ),

              //--------------------- Already have an account Sign in ------
              SignupLink(),
            ],
          ),
        ));
  }
}
