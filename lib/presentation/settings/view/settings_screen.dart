import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/app/constants/constant_text_style.dart';
import 'package:task_app/presentation/settings/widgets/app_information_section.dart';
import 'package:task_app/presentation/settings/widgets/app_preference.dart';
import 'package:task_app/presentation/settings/widgets/remainder_alert_section.dart';
import 'package:task_app/presentation/settings/widgets/support_policy_section.dart';
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
           // print("setting to back");
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //================ App Preference =========================================
              Text("App Preference",style: ConstantTextStyle.sectionTitle,),
              AppPreference(),

              SizedBox(height: 15,),


              //==================== Reminder & Alert Section ===========================
              Text("Reminder & Alert",style: ConstantTextStyle.sectionTitle,),
              RemainderAlertSection(),


              SizedBox(height: 15,),

              //========================App Information ===================================
              Text("App Information",style: ConstantTextStyle.sectionTitle,),
              AppInformationSection(),

              SizedBox(height: 15,),

              //======================Support and Polices =================================
              Text("Support & Policy",style: ConstantTextStyle.sectionTitle,),
              SupportPolicySection(),

            ],
          ),
        ),
      )),

    );
  }
}
