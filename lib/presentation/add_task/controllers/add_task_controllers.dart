import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/core/utils/validation.dart';

class AddTaskControllers extends GetxController{

  final formKey =GlobalKey<FormState>();

  final TextEditingController titleController =TextEditingController();
  final TextEditingController descriptionController =TextEditingController();




  //==========================Show Date =======================================
  RxString selectedDate ="".obs;

  Future<String?> pickDate({required context}) async{
   final pickedDate=await showDatePicker(
        context: context,
        firstDate: DateTime(2000),
        lastDate: DateTime(2029)
    );
    if(pickedDate != null){
      return selectedDate.value = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
    }
    return null;
  }

  //============================Format Time with AM PM =========================
   String formatTimeWithAMPM(TimeOfDay pickTime){
    final hour=pickTime.hourOfPeriod.toString().padLeft(2,"0");
    final minutes =pickTime.minute.toString().padLeft(2,"0");
    final period =pickTime.period == DayPeriod.am?"AM":"PM";
    return "$hour : $minutes $period";
  }


  //===========================Show Time =======================================
  RxString selectedTime ="".obs;

  Future<String?> pickTime({required context}) async{
    final pickedTime= await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now()
    );

    if(pickedTime != null){
      return selectedTime.value = formatTimeWithAMPM(pickedTime);
    }

    return null;


  }


  //================================= Add Task ==================================
  RxString titleError="".obs;
  RxString descriptionError ="".obs;

  RxString timeError = "".obs;
  RxString dateError = "".obs;

  validationWithAddTask(){
    titleError.value=Validation.taskTitleValidator(titleController.text.trim())??"";
    descriptionError.value=Validation.taskDescriptionValidator(descriptionController.text.trim())??"";

    if(selectedTime.value.isEmpty){
      timeError.value ="Time must select";
    }
    else{
      timeError.value ="";
    }

    if(selectedDate.value.isEmpty){
      dateError.value ="Date must select";
    }
    else{
      dateError.value="";
    }


    if(titleError.value.isNotEmpty && descriptionError.value.isNotEmpty
        && timeError.value.isNotEmpty && dateError.value.isNotEmpty){
      print("validated");
    }

  }

  Future<void> addTask() async{


  }




}