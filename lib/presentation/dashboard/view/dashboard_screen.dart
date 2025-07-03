import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //=================== AppBar Section =========================
      appBar: AppBar(
        backgroundColor: Colors.white,
        
        title: Text("Hello,Rakibul",style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),),

        actions: [
          InkWell(
              onTap: (){
                //-----------Navigate to Profile
                Get.offNamed("/profile");
              },
              child: Image.asset("assets/images/male-user-1.png",height: 40,width: 40,)
          ),
          SizedBox(width: 10,),
        ],
      ),


     // body: ,

      //======================== Bottom Navigation Section ==========
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,

          showUnselectedLabels: true,
          showSelectedLabels: true,

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded),label: "ALl Task"),
            BottomNavigationBarItem(icon: Icon(Icons.check_circle_rounded),label: "Complete"),
          ],
      ),

    );
  }
}
