import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/core/services/task_api_services.dart';
import 'package:task_app/core/utils/snackbar_utils.dart';
import 'package:task_app/core/utils/validation.dart';
import 'package:task_app/presentation/dashboard/controller/task_controller.dart';


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

  RxBool isLoading = false.obs;

  validationWithAddTask() async{
    //------------Loading indicator show ------
    isLoading.value =true;

    titleError.value=Validation.taskTitleValidator(titleController.text.trim())??"";
    descriptionError.value=Validation.taskDescriptionValidator(descriptionController.text.trim())??"";

    //---------------Time error value set -------------
    selectedTime.value.isEmpty
        ? timeError.value ="Time must select"
        :timeError.value ="";



    //---------------date error value set ------------
    selectedDate.value.isEmpty
        ? dateError.value ="Date must select"
        :dateError.value ="";



    if(titleError.value.isEmpty && descriptionError.value.isEmpty
        && timeError.value.isEmpty && dateError.value.isEmpty){
      await addTask();
      isLoading.value=false;
    }

  }


  //=============================Task Add Function ===========================
  final TaskController taskController=Get.find<TaskController>();

  Future<void> addTask() async{
    try{

     final response = await TaskApiServices.post({
       "title":titleController.text,
       "description":descriptionController.text,
       "date":selectedDate.value,
       "time":selectedTime.value,
     });

     if(response != null){
       titleController.clear();
       descriptionController.clear();
       selectedTime.value="No select time";
       selectedDate.value="No select date";
       taskController.loadAllTask();
       SnackbarUtil.showSuccess("Successful", "Task Add");

     }
     else{
       SnackbarUtil.showInfo("Failed", "Task Add");
     }


    }
    catch(e){
      SnackbarUtil.showError("Error", "Task add error : $e");

    }



  }




}