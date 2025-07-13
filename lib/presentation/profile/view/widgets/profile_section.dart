
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../app/constants/constant_color.dart';
import '../../controller/profile_controller.dart';

class ProfileSection extends StatelessWidget {
  ProfileSection({super.key});


  final ProfileController profileController =Get.find<ProfileController>();


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: ConstantColor.profileContainerBg,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow:[
            BoxShadow(
                color: ConstantColor.profileContainerShadow,
                blurRadius: 4,
                offset: Offset(0, 3)
            )
          ]
      ),

      child: Center(
        child:Obx(()=>  ListTile(
          //------------image -------
          leading: CircleAvatar(
            child: Image.asset(profileController.userProfile.value),
          ),

          //-------------Name ---------
          title: Text(profileController.userName.value,),
          //------------ Email --------
          subtitle: Text(profileController.userEmail.value),
        )),
      ),

    );
  }
}
