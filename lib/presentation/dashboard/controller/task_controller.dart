import 'package:get/get.dart';

import '../../../core/services/task_api_services.dart';
import '../../../core/utils/snackbar_utils.dart';
import '../../../data/models/task_models.dart';

class TaskController extends GetxController{

  @override
  void onInit(){
    super.onInit();
    loadAllTask();
    loadTodayTask();
  }

  //=================================Task Load =================================
  RxList<TaskModels> allTask=<TaskModels>[].obs;
  RxInt totalTask=0.obs;
  Future<void> loadAllTask() async{
    List<dynamic> response = await TaskApiServices.getTask();

    if(response.isNotEmpty){
      allTask.value =response.map((task)=> TaskModels.fromJson(task)).toList();
      //------------------Total Task
      totalTask.value=allTask.length;

      //-------------Today task call----------
      loadTodayTask();

      SnackbarUtil.showSuccess("Successful", "Task Loading");

    }
    else{
      SnackbarUtil.showError("Failed", "Task Loading");

    }
  }


  //=================================Today Task ================================
  RxList<TaskModels> todayTask=<TaskModels>[].obs;

  void loadTodayTask(){
    DateTime date=DateTime.now();
    String todayDate="${date.day}/${date.month}/${date.year}";

    todayTask.value = allTask.where((task){
      final filter= task.date ==todayDate;
      return filter;
    }).toList();

  }

}