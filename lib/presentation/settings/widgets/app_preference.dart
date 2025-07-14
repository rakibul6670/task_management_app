
import 'package:flutter/material.dart';

class AppPreference extends StatelessWidget {
  const AppPreference({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(child: Column(
      children: [

        //================= Theme Mode ==========
        ListTile(
          title: Text("Theme Mode"),
          trailing: DropdownButton(
              value: "Light",
              items:["Dark","Light"].map((value)=>DropdownMenuItem(
                  value: value,
                  child:Text(value)
              )).toList(),

              onChanged:(value){}
          ),
        ),


        SizedBox(height: 10,),


        //================= Language ============
        ListTile(
          title: Text("Language"),
          trailing: DropdownButton(
              value: "English",
              items:["English","Bangla"].map((value)=>DropdownMenuItem(
                  value: value,
                  child:Text(value)
              )).toList(),

              onChanged:(value){}
          ),
        ),

      ],
    ),);
  }
}
