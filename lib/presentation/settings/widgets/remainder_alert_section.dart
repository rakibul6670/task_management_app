
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/presentation/settings/controller/settings_controller.dart';

class RemainderAlertSection extends StatelessWidget {
  const RemainderAlertSection({super.key});

  @override
  Widget build(BuildContext context) {
    final SettingsController settingsController =Get.find<SettingsController>();
    
    return Card(child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: 10,),
          //---------------------Enable Remainder ----------
          Obx(()=>SwitchListTile(
              title: Text("Enable Remainder"),
              value: settingsController.enableRemainder.value,
              onChanged: (value){
                settingsController.enableRemainder.value = value;
              }
          )),

          SizedBox(height: 10,),

          //=====================Repeat ===================
          Text("Repeat",style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold
          ),),

          SizedBox(height: 10,),

          Wrap(
            children: settingsController.repeatOption.map((repeat){
              return Obx(()=> RadioListTile(
                  title: Text(repeat),
                  value: repeat,
                  groupValue: settingsController.selectedRepeat.value,
                  onChanged: (value){
                      settingsController.selectedRepeat.value = repeat;
                  }
              ));
            }).toList(),
          ),

          SizedBox(height: 10,),


          //=====================Repeat ===================
          
          Text("Notification Mode",style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 15,),

          Wrap(
            spacing: 10,
            children:settingsController.notificationOption.map((option)=>
                Obx(()=> ChoiceChip(
                  label: Text(option),
                  selectedColor: Colors.green[300],
                  selected: settingsController.selectedNotificationOption.value == option,
                  onSelected: (bool selected){
                   if(selected){
                     settingsController.selectedNotificationOption.value=option as String;
                   }
                  },
                ))
            ).toList(),
          ),

          SizedBox(height: 10,),

        ],
      ),
    ),);
  }
}
