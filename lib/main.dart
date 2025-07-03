import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_app/app/routes/app_routes.dart';
import 'package:task_app/core/services/auth_api_services.dart';
import 'app/routes/app_pages.dart';

void main() async{
  AuthApiServices.getUser();


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
