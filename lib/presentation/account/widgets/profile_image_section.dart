
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/account_controller.dart';

class ProfileImageSection extends StatelessWidget {
   ProfileImageSection({super.key});

   final AccountController accountController =Get.find<AccountController>();

   @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //------------------Male profile---------
        Obx(()=>InkWell(
          onTap:(){
            accountController.isMale.value=true;
          },
          child:  CircleAvatar(
              radius: 30,
              backgroundColor:accountController.isMale.value
                  ? Colors.green
                  : Colors.white,
              child: Image.asset( "assets/images/male-user-1.png")
          ),
        ),),

        SizedBox(width: 15,),
        //-----------------Female Profile -------
        Obx(()=>InkWell(
          onTap:(){
            accountController.isMale.value =false;
          },
          child: CircleAvatar(
              radius: 30,
              backgroundColor:  accountController.isMale.value
                  ?Colors.white
                  :Colors.green,
              child: Image.asset("assets/images/female-user-1.png")
          ),
        )),
      ],
    );
  }
}
