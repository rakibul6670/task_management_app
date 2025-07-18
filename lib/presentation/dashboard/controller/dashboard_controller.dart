import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_app/presentation/dashboard/controller/task_controller.dart';
import 'package:task_app/presentation/dashboard/view/all_tasks/all_tasks.dart';
import 'package:task_app/presentation/dashboard/view/complete_tasks/complete_tasks.dart';
import 'package:task_app/presentation/dashboard/view/today_tasks/today_tasks.dart';

class DashboardController extends GetxController{

  @override
  void onInit() {
    super.onInit();
    screens =[
      TodayTasks(),
      AllTasks(),
      CompleteTasks(),
    ];
  }


  //================================Dashboard Screen ===========================
  late List<Widget> screens;

  //--------------------Current Index --------
  RxInt currentIndex=0.obs;

}