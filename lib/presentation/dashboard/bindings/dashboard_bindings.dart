import 'package:get/get.dart';
import 'package:task_app/presentation/dashboard/controller/dashboard_controller.dart';

class DashboardBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(DashboardController());
  }

}