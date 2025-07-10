import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_app/core/services/local_storage.dart';
import 'package:task_app/presentation/dashboard/view/all_tasks/all_tasks.dart';
import 'package:task_app/presentation/dashboard/view/complete_tasks/complete_tasks.dart';
import 'package:task_app/presentation/dashboard/view/today_tasks/today_tasks.dart';

class DashboardController extends GetxController{

  List<Widget> screens =[
    TodayTasks(),
    AllTasks(),
    CompleteTasks(),
  ];

  //--------------------Current Index --------
  RxInt currentIndex=0.obs;

  //---------------------User Profile ------
  RxBool isMale =true.obs;

  // final LocalStorage localStorage =LocalStorage();
  //
  // @override
  // void onInit(){
  //   super.onInit();
  //   localStorage.init();
  //  isMale.value = localStorage.userProfile;
  //
  // }




}