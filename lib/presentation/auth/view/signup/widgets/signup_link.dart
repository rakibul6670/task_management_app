
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignupLink extends StatelessWidget {
  const SignupLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //--------------Don't have an account --------
        Text("I have an account?",style: TextStyle(
            color: Colors.white
        ),),

        SizedBox(width: 10,),
        //---------------Sign up -------------
        InkWell(
          onTap: (){
            Get.offNamed("/login");
          },
          child: Text("Sign in",style: TextStyle(
            color: Color(0xFF34F808),
          ),),
        ),

      ],
    );
  }
}
