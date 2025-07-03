import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/shared/widgets/custom_text_field.dart';
import 'package:task_app/shared/widgets/custom_button.dart';

import '../../controller/login_controller.dart';


class LoginScreen extends StatelessWidget {

  LoginScreen({super.key});

  //-------------------Login controller -----------
 final LoginController loginController =Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: Color(0xFF240b48),

        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //================== image =========
                Image.asset(
                  "assets/images/auth/login_bg.jpg",
                  width: size.width * 1,
                  height: size.height * .30,
                  fit: BoxFit.cover,
                ),

                //=========== Login title =========
                Text("LOGIN",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.white
                ),),

                SizedBox(height: 10,),

                //======================= Login Subtitle ===========
                Text("login with email address and password ",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white
                ),),

                // ==================== Form =======================
                Form(
                    key: loginController.formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          //--------------Email Address -------------------------------
                          CustomTextField(
                            controller: loginController.emailController,
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

                          //-----------------------Email Error message show --------
                          SizedBox(height: 5,),

                          Obx(() => loginController.emailError.value.isNotEmpty
                              ? Text(loginController.emailError.value,
                              style: TextStyle(color: Colors.red, fontSize: 12))
                              : SizedBox.shrink()),

                          SizedBox(height: 10,),


                          //--------------Password -----------------------------------
                          Obx(
                            ()=> CustomTextField(
                              controller: loginController.passwordController,
                              fillColor: Color(0xFF190733),
                              obscureText: loginController.isObscure.value,
                              prefix: Icon(Icons.password,size: 30,color: Colors.white,),
                              suffix: IconButton(
                                  onPressed: (){
                                    loginController.isObscure.value = !loginController.isObscure.value;
                                  },
                                  icon: loginController.isObscure.value == true
                                      ? Icon(Icons.visibility_off,size: 30,color: Colors.white,)
                                      :Icon(Icons.visibility,size: 30,color: Colors.white,),
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
                          //-------------Password Error Show -------------------------
                          Obx(() => loginController.passwordError.value.isNotEmpty
                              ? Text(loginController.passwordError.value,
                              style: TextStyle(color: Colors.red, fontSize: 12))
                              : SizedBox.shrink()),


                          SizedBox(height: 10,),

                          //------------------- Sign up button --------------------------
                          CustomButton(
                            onPressed: loginController.validateLogin,
                            height: 50,
                            width:size.width,
                            buttonName: 'Login',
                            fontSize: 26,
                          ),

                          SizedBox(height: 15,),

                          //--------------------- Already have an account Sign in ------
                          Row(
                            children: [
                              //--------------Don't have an account --------
                              Text("Don't have an account?",style: TextStyle(
                                color: Colors.white
                              ),),

                              SizedBox(width: 10,),
                              //---------------Sign up -------------
                              InkWell(
                                onTap: (){
                                  Get.offNamed("/signup");
                                },
                                child: Text("Sign Up",style: TextStyle(
                                  color: Color(0xFF34F808),
                                ),),
                              ),

                            ],
                          ),

                        ],
                      ),
                    ))


              ],
            ),
          ),
        )

    );
  }
}
