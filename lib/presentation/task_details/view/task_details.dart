import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/app/constants/constant_text_style.dart';
import 'package:task_app/shared/widgets/custom_icon_button.dart';

class TaskDetails extends StatelessWidget {
  // final String title;
  // final String description;
  // final String date;
  // final String time;

  const TaskDetails({super.key,
    // required this.title,
    // required this.description,
    // required this.date,
    // required this.time
  });

  @override
  Widget build(BuildContext context) {
    final Size size =MediaQuery.sizeOf(context);
    final taskData=Get.arguments??{};

    return Scaffold(

      //--------------------------AppBar Section ------------------------
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("TaskDetails"),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: Icon(Icons.arrow_back)
        ),
      ),



      //------------------------------Body section ---------------------
      body: SingleChildScrollView(
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //---------------Title and Status -----------------------
                Wrap(
                 children: [
                   Text("${taskData['title']}",style: ConstantTextStyle.taskTitle,)
                 ],
               ),
                SizedBox(height: 16,),

                //------------------------------Date --------------------
                Text("🗓️ Date :${taskData["date"]} ",style:ConstantTextStyle.taskDate ,),
                SizedBox(height: 10,),

                //--------------------------Time -------------------------
                Text("⏰ Time :${taskData["time"]}",style: ConstantTextStyle.taskTime),
                SizedBox(height: 10,),

                //--------------------------Description -------------------
                Text("Description",style: ConstantTextStyle.taskDescriptionTitle),
                SizedBox(height: 10,),

                Text("${taskData["description"]}",style: ConstantTextStyle.taskDescription,),
                SizedBox(height: 10,),


                //------------------------------Status-------------------
                Text("✅ status 🕒",style: ConstantTextStyle.taskStatus,),
                 SizedBox(height: 10,),
                //---------------------------------------Status Checkbox ---------
                CheckboxListTile(
                    enabled:taskData["from"]=="allTask"? false:true,
                    value: false,
                    onChanged: (value){},
                    title: Text("Mark as Complete",style: TextStyle(
                      fontSize: 15,
                    ),),
                ),
                SizedBox(height: 10,),

                //-------------------Edit and Delete Button---------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomIconButton(
                      height: 50,
                      width:size.width * 0.40,
                      buttonName: "Edit",
                      icon:Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),

                    CustomIconButton(
                      backgroundGradient: LinearGradient(colors: [
                        Color(0xfffa0060),
                        Color(0xfffa0060),
                      ]),
                      height: 50,
                      width:size.width * 0.40,
                      buttonName: "Delete",
                      icon: Icon(
                        Icons.delete,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
