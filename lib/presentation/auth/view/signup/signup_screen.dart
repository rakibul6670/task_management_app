import 'package:flutter/material.dart';
import 'package:task_app/presentation/auth/view/signup/widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});


  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Color(0xFF240b48),
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //================== image =========
            Image.asset(
              "assets/images/auth/login_bg.jpg",
              width: size.width * 1,
              height: size.height * .25,
              fit: BoxFit.cover,
            ),
            
            //=========== Login title =========
            Text("Sign Up",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              color: Colors.white
            ),),
        
            SizedBox(height: 10,),
        
            //======================= Login Subtitle ===========
            Text("Sign up with email address and password ",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.white
            ),),
            
            // ==================== Form =======================
            SignupForm(),
          ],
        ),
      )
      
    );
  }
}
