
import 'package:flutter/material.dart';

class RemainderAlertSection extends StatelessWidget {
  const RemainderAlertSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: 10,),
          //---------------------Enable Remainder ----------
          SwitchListTile(
              title: Text("Enable Remainder"),
              value: true, onChanged: (value){}
          ),

          SizedBox(height: 10,),

          //=====================Repeat ===================
          Text("Repeat",style: TextStyle(
            fontSize: 20,
          ),),

          SizedBox(height: 10,),

          Column(
            children: [

              //------------Once----
              RadioListTile(
                  title: Text("Once"),
                  value: false,
                  groupValue:context,
                  onChanged: (value){}
              ),

              //------------Daily----
              RadioListTile(
                  title: Text("Daily"),
                  value: true,
                  groupValue:context,
                  onChanged: (value){}
              ),



              //------------Weekly----
              RadioListTile(
                  title: Text("Weekly"),
                  value: false,
                  groupValue:context,
                  onChanged: (value){}
              ),
            ],
          ),

          //-------------



          //=====================Repeat ===================
          Text("Notification Mode",style: TextStyle(
            fontSize: 20,
          ),),
          SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //------------Sound--------------------
              ChoiceChip(
                label: Text("Sound"),
                selected: true,
                //backgroundColor: Colors.grey,
                onSelected: (value){},
                selectedColor: Colors.green[300],
              ),
              //------------Vibrate------------------
              ChoiceChip(
                label: Text("Vibrate"),
                selected: false,
                //backgroundColor: Colors.orange,
                onSelected: (value){},
                selectedColor: Colors.green[400],
              ),


              //------------Silent-----------------
              ChoiceChip(
                label: Text("Silent"),
                selected: false,
                // backgroundColor: Colors.orange,
                onSelected: (value){},
                selectedColor: Colors.green,
              ),

            ],
          ),

          SizedBox(height: 10,),

        ],
      ),
    ),);
  }
}
