import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/presentation/settings/widgets/app_preference.dart';
import 'package:task_app/presentation/settings/widgets/remainder_alert_section.dart';
import 'package:task_app/shared/widgets/custom_info_title.dart';
import '../../../app/constants/constant_color.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.appBg,

      //========================= AppBar Section ===============
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            //---------------back to profile ------
            Get.back();
          },
          child: Icon(Icons.arrow_back,size: 30,),
        ),
        title: Text("Settings"),
      ),

      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              //================ App Preference ============================================
              Text("App Preference"),
              AppPreference(),

              SizedBox(height: 15,),


              //==================== Reminder & Alert Section =========
              Text("Reminder & Alert"),
              RemainderAlertSection(),


              SizedBox(height: 15,),



              //========================App Information =============
              Text("App Information"),

              Card(
                child: Column(
                  children: [
                    //---------------Version --------
                    CustomInfoTitle(
                      title: "Version",
                      leading: Icon(Icons.verified_sharp),
                      subtitle: "v1.0.0",
                    ),

                    //---------------Developer --------
                    CustomInfoTitle(
                      title: "Developer",
                      leading: Icon(Icons.person),
                      subtitle: "Rakibul Hossain",
                    ),

                    //---------------Contact --------
                    ExpansionTile(
                        leading: Icon(Icons.contact_mail),
                        title:Text("Contact info"),
                        children: [

                          //-----------------Email --------
                          CustomInfoTitle(
                            title: "Email",
                            subtitle: "rakibulpb6670@gmail.com",
                            leading: Icon(Icons.email),
                          ),

                          //-----------------Phone number --------
                          CustomInfoTitle(
                            title: "Phone",
                            subtitle: "01560029377",
                            leading: Icon(Icons.phone),
                          ),

                          //-----------------Email --------
                          CustomInfoTitle(
                            title: "GitHub",
                            subtitle: "https://github.com/rakibul6670",
                            leading: Icon(Icons.code),
                          ),

                        ],
                    )

                  ],
                ),
              ),

              SizedBox(height: 15,),

              //======================Support and Polices =========
              Text("Support & Polices"),

              Card(
                child: Column(
                  children: [
                    //---------------Rate App --------
                    CustomInfoTitle(
                      onTap: (){},
                      title: "Rate App",
                      leading: Icon(Icons.star_rate),
                    ),

                    //---------------Share App --------
                    CustomInfoTitle(
                      onTap: (){
                        //action
                      },
                      title: "Share App",
                      leading: Icon(Icons.share),
                    ),

                    //---------------Feedback--------
                    CustomInfoTitle(
                      onTap: (){},
                      title: "Feedback",
                      leading: Icon(Icons.feedback),
                    ),

                    //---------------Privacy & Policy --------
                    CustomInfoTitle(
                      onTap: (){},
                      title: "Privacy & Policy",
                      leading: Icon(Icons.privacy_tip),
                    ),

                    //---------------Term & Condition--------
                    CustomInfoTitle(
                      onTap: (){},
                      title: "Terms & Condition",
                      leading: Icon(Icons.article_outlined),
                    ),

                  ],
                ),
              ),


            ],
          ),
        ),
      )),

    );
  }
}
