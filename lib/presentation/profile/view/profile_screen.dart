import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/app/constants/constant_color.dart';
import 'package:task_app/presentation/profile/view/widgets/logout_section.dart';
import 'package:task_app/presentation/profile/view/widgets/profile_section.dart';



class ProfileScreen extends StatelessWidget {
 const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ConstantColor.appBg,

      //====================== AppBar Section ============
      appBar: AppBar(
        backgroundColor:ConstantColor.appbarBg,

        leading: InkWell(
            onTap: (){
              //------------Navigate back dashboardScreen-----
              Get.back();
            },
            child: Icon(Icons.arrow_back,size: 30,)
        ),
        title: Text("Profile"),
      ),



      //======================= Body Section ==================
       body: SafeArea(
           child:SingleChildScrollView(
             child: Padding(
               padding: EdgeInsets.all(20),
               child: Column(
                 children: [

                   //-------------------Profile  Section -------
                   ProfileSection(),

                   SizedBox(height: 35,),

                   //-----------------Account ----------
                   ListTile(
                     onTap: (){
                       //----------go to account screen -----
                       Get.toNamed("/account");
                     },
                     leading: Icon(Icons.manage_accounts_outlined,size: 35,),
                     title: Text("Account"),
                   ),


                   //-----------------Settings ---------
                   ListTile(
                     onTap: (){
                       //----------go to settings screen -----
                       Get.toNamed("/settings");
                     },
                     leading: Icon(Icons.settings,size: 35,),
                     title: Text("Settings"),
                   ),


                  //================Logout Section ============
                  LogoutSection()

                 ],
               ),
             ),
           )
       ),

    );
  }
}
