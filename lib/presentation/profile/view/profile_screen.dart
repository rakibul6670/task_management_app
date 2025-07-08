import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/app/constants/constant_color.dart';
import 'package:task_app/presentation/profile/controller/profile_controller.dart';
import 'package:task_app/shared/widgets/custom_dialog.dart';


class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final ProfileController profileController =Get.find<ProfileController>();

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

                   //-------------------Profile Header Section -------
                   Container(
                     height: 130,
                     padding: EdgeInsets.all(5),
                     decoration: BoxDecoration(
                       color: ConstantColor.profileContainerBg,
                       borderRadius: BorderRadius.all(Radius.circular(12)),
                       boxShadow:[
                         BoxShadow(
                           color: ConstantColor.profileContainerShadow,
                           blurRadius: 4,
                           offset: Offset(0, 3)
                         )
                       ]
                     ),

                     child: Center(
                       child:Obx(()=>  ListTile(
                         //------------image -------
                         leading: CircleAvatar(
                           child: Image.asset('assets/images/male-user-1.png'),
                         ),

                         //-------------Name ---------
                         title: Text(profileController.userName.value,),
                         //------------ Email --------
                         subtitle: Text(profileController.userEmail.value),
                       )),
                     ),

                   ),

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


                   //---------------- Log Out ---------
                   ListTile(
                     onTap: (){
                       //----------go to account screen -----
                       showConfirmDialog(
                           title: 'Are You Sure ?',
                           content: 'Do you want to logout',
                           logout: () {
                             Get.back();
                             ProfileController().logout();

                           }
                       );

                     },
                     leading: Icon(Icons.logout,size: 35,),
                     title: Text("Log out"),
                   )



                 ],
               ),
             ),
           )
       ),

    );
  }
}
