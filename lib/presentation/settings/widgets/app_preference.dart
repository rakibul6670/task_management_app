
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/presentation/settings/controller/settings_controller.dart';

class AppPreference extends StatelessWidget {
  AppPreference({super.key});

  final SettingsController settingsController =Get.find<SettingsController>();


  @override
  Widget build(BuildContext context) {
    return Card(child: Column(
      children: [
        //================= Theme Mode ==========
         ListTile(
          title: Text("Theme Mode"),
          trailing: Obx(()=> DropdownButton(
              value:settingsController.selectedTheme.value,
              items:settingsController.themeModeList.map((value)=>DropdownMenuItem(
                  value: value,
                  child:Text(value)
              )).toList(),

              onChanged:(value){
                settingsController.selectedTheme.value=value as String;
              }
          )),
        ),

        SizedBox(height: 10,),

        //================= Language ============
        ListTile(
          title: Text("Language"),
          trailing: Obx(()=>DropdownButton(
              value: settingsController.selectedLanguage.value,
              items:settingsController.languageList.map((value)=>DropdownMenuItem(
                  value: value,
                  child:Text(value)
              )).toList(),

              onChanged:(value){
                settingsController.selectedLanguage.value=value as String;
              }
          )),
        ),

      ],
    ),);
  }
}
