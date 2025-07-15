import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/app/routes/app_routes.dart';
import 'package:task_app/presentation/dashboard/controller/dashboard_controller.dart';


class DashboardScreen extends StatelessWidget {
   DashboardScreen({super.key});

   //-----------------dashboard controller -------------
  final DashboardController dashboardController = Get.find<DashboardController>();
  //------------------Account controller -----------
 // final AccountController accountController =Get.find<AccountController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffff8),

      //=================== AppBar Section =========================
      appBar: AppBar(
        backgroundColor: Colors.orange,
        automaticallyImplyLeading: false,
        title: Text("Task Management ",style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,

        actions: [
          InkWell(
              onTap: (){
                //-----------Navigate to Profile
                Get.toNamed("/profile");
              },
              child:  Obx(()=>Image.asset(
                dashboardController.userProfileImage.value,
                height: 40,width: 40,),)),

          SizedBox(width: 10,),
        ],
      ),


      body: Obx(()=> dashboardController.screens[dashboardController.currentIndex.value]),
      
      
      //=========================== Floating Action Button =========
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: (){
          Get.toNamed(AppRoutes.addTask);
        },
        child: Icon(Icons.add,size: 35,color: Colors.white,
        ),
      ),
      
      
      
      //======================== Bottom Navigation Section ==========
      bottomNavigationBar: Obx(()=> BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        currentIndex: dashboardController.currentIndex.value,

        onTap: (value){
          dashboardController.currentIndex.value=value;
        },

        showUnselectedLabels: true,
        showSelectedLabels: true,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Today Task"),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded),label: "ALl Task"),
          BottomNavigationBarItem(icon: Icon(Icons.check_circle_rounded),label: "Complete"),
        ],
      )),

    );
  }
}
