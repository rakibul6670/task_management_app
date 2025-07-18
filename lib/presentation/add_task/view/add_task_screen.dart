import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/app/constants/constant_text_style.dart';
import 'package:task_app/presentation/add_task/controllers/add_task_controllers.dart';
import 'package:task_app/shared/widgets/custom_button.dart';
import 'package:task_app/shared/widgets/custom_text_field.dart';


class AddTaskScreen extends StatelessWidget {
   AddTaskScreen({super.key});

  final AddTaskControllers addTaskControllers =Get.find<AddTaskControllers>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //============================= AppBar Section =========================
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: InkWell(
          onTap: (){
            //---------------back to profile ------
            // print("setting to back");
            Get.back();
          },
          child: Icon(Icons.arrow_back,size: 30,),
        ),
        title: Text("Add Task"),
      ),


      //============================== Body ===================================
      body: SingleChildScrollView(
        child: SafeArea(child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: addTaskControllers.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //-----------------------Task Title --------------------------------
                CustomTextField(
                    controller: addTaskControllers.titleController,
                    maxLength: 30,

                    borderRadius: 17,
                    fillColor: Colors.grey.shade200,
                    contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    hintText: "Enter your task title ",
                    hintTextStyle: TextStyle(
                      color: Colors.black38,
                    ),
                ),
                SizedBox(height: 5,),
                Obx(()=>Text(addTaskControllers.titleError.value,style: ConstantTextStyle.addTaskError,) ),

                SizedBox(height: 15,),

                //-------------------------------Task Description ------------------
                CustomTextField(
                  controller: addTaskControllers.descriptionController,
                  maxLine: 4,
                  borderRadius: 17,
                  fillColor: Colors.grey.shade200,
                  contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  hintText: "Enter your task description ",
                  hintTextStyle: TextStyle(
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 5,),
                Obx(()=>Text(addTaskControllers.descriptionError.value,style: ConstantTextStyle.addTaskError,) ),

                SizedBox(height: 15,),

                //-----------------------------Date --------------------------------
                ListTile(
                  leading: Icon(Icons.calendar_month),
                  title:  Obx(()=>Text(addTaskControllers.selectedDate.value.isEmpty
                      ?"No select date"
                      :addTaskControllers.selectedDate.value
                  )),
                  trailing:  TextButton(
                      onPressed: (){
                        addTaskControllers.pickDate(context: context);
                      },
                      child: Text("Pick Date",style: TextStyle(
                        color: Colors.black
                      ),)
                  ),
                ),
                SizedBox(height: 5,),
                Obx(()=>Text(addTaskControllers.dateError.value,style: ConstantTextStyle.addTaskError,) ),

                //------------------------------ Time ------------------------------
                SizedBox(height: 15,),
                ListTile(
                  leading: Icon(Icons.access_time),
                  title:  Obx(()=>Text(addTaskControllers.selectedTime.value.isEmpty
                      ?"No select time"
                      :addTaskControllers.selectedTime.value)),
                  trailing:  TextButton(
                      onPressed: (){
                        addTaskControllers.pickTime(context: context);
                      },
                      child: Text("Pick Time",style: TextStyle(
                          color: Colors.black
                      ),)
                  ),
                ),
                SizedBox(height: 5,),
                Obx(()=>Text(addTaskControllers.timeError.value,style: ConstantTextStyle.addTaskError,) ),

                //-----------------------------Add button-------------------------
                SizedBox(height: 15,),
                Obx(()=>addTaskControllers.isLoading.value
                    ?Center(child: CircularProgressIndicator(color: Colors.black54,))
                    :CustomButton(
                    onPressed: (){
                      addTaskControllers.validationWithAddTask();
                    },
                    height: 45,
                    width: double.infinity,
                    buttonName: 'Add Task'
                ),),

              ],
            ),
          ),
        )),
      ),
    );
  }
}
