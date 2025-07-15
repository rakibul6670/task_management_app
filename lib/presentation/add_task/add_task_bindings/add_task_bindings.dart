import 'package:get/get.dart';
import 'package:task_app/presentation/add_task/controllers/add_task_controllers.dart';

class AddTaskBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(AddTaskControllers());
  }

}