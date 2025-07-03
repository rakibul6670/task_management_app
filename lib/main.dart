import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_app/app/routes/app_routes.dart';
import 'app/routes/app_pages.dart';

void main() async{


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
