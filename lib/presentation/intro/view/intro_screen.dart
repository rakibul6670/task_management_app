
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:task_app/presentation/intro/controller/intro_controller.dart';
import 'package:task_app/presentation/intro/widgets/intro_decoration.dart';
import '../widgets/intro_image.dart';

class IntroScreen extends StatelessWidget {
   IntroScreen({super.key});

  final IntroController introController =Get.find<IntroController>();


  @override
  Widget build(BuildContext context) {
    //-----------------Responsive size ------------
    //final Size size=MediaQuery.sizeOf(context);
    return IntroductionScreen(

      pages: [

        //==================== Intro Screen 1 =========
        PageViewModel(
          title: "📋 Manage Your Tasks",
          body: "Organize and prioritize your daily tasks easily",
          image: buildIntroImage("assets/images/intro/intro_1.jpg"),
          decoration: getPageDecoration(
              bgColor: Colors.white,
              titleTextColor: Colors.black,
              bodyTextColor:Colors.black38
          ),

        ),


        //==================== Intro Screen 2 =========
        PageViewModel(
          //backgroundImage: "assets/images/intro/intro_2.jpg",
          title: "⏰ Set Reminders",
          body: "Never miss a deadline with timely reminders.",
          image: buildIntroImage("assets/images/intro/intro_2.jpg"),
          decoration: getPageDecoration(
              bgColor: Colors.white,
              titleTextColor: Colors.black,
              bodyTextColor:Colors.black38
          ),
        ),

        //==================== Intro Screen 3 =========
        PageViewModel(
          title: "✅ Track Progress",
          body: "Keep track of completed tasks and boost productivity.",
          image: buildIntroImage("assets/images/intro/intro_3.jpg"),
          decoration: getPageDecoration(
              bgColor: Colors.white,
              titleTextColor: Colors.black,
              bodyTextColor:Colors.black45
          ),
        ),

      ],

      safeAreaList: [true,true,true,true],

      //----------------------Done Button Style -----------
      showSkipButton: true,
      done: const Text("Get Started"),
      skip: const Text("Skip"),
      next: const Text("Next"),


      onSkip: (){
        introController.skip();
      },
      onDone: (){
       introController.done();
      },

      globalBackgroundColor: Colors.white,

      //bodyPadding: EdgeInsets.only(bottom: 10),

    );
  }
}
