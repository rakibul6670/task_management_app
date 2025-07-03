import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_app/presentation/dashboard/view/all_tasks.dart';
import 'package:task_app/presentation/dashboard/view/complete_tasks.dart';
import 'package:task_app/presentation/dashboard/view/today_tasks.dart';

class DashboardController extends GetxController{

  List<Widget> screens =[
    TodayTasks(),
    AllTasks(),
    CompleteTasks(),
  ];

  //--------------------Current Index --------
  RxInt currentIndex=0.obs;


}