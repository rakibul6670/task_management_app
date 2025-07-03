import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //================= Splash Logo ============
            Image.asset("assets/images/app_icon.png"),

            //====================== App Name ==========
            Text("Task Management",style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),),

          ],

        ),
      )),
    );
  }
}
