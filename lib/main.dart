import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_app/app/routes/app_routes.dart';
import 'package:task_app/core/services/task_api_services.dart';
import 'package:task_app/presentation/dashboard/controller/dashboard_controller.dart';
import 'app/routes/app_pages.dart';

void main() async{

  // List<Map<String,dynamic>> allTask=[
  //   {
  //     "title":"title1",
  //     "description":"sfdsh ",
  //     "date":"09/07/2025",
  //   },
  //   {
  //     "title":"title1",
  //     "description":"sfdsh ",
  //     "date":"18/07/2025",
  //   },
  //   {
  //     "title":"title1",
  //     "description":"sfdsh ",
  //     "date":"09/07/2025",
  //   }
  // ];
  // late List result1;
  // filter(){
  //   result1 = allTask.where((task){
  //     final match=task["date"]=="05/07/2025";
  //     return match;
  //   }).toList();
  // }
  //
  // filter2(){
  //
  // }
  //
  // filter();
  // print("$result1");
  // print("${result1.length}");


  // WidgetsFlutterBinding.ensureInitialized();
  // Get.put(DashboardController());
  // print(Get.isRegistered<DashboardController>()); // true হলেই ঠিক আছে


  // AuthApiServices.getUser();
 //  TaskApiServices.getTask();
 //  TaskApiServices.post({
 //    "title":"Study",
 //    "description":"i should must do study ,,on 17 july my final exam",
 //    "date":"17/07/2025",
 //    "time":"10:00 AM",
 //  });




  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute:AppRoutes.initialRoute,
      getPages: AppPages.routes,


    );
  }
}
