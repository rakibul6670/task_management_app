
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../shared/widgets/custom_dialog.dart';
import '../../controller/profile_controller.dart';

class LogoutSection extends StatelessWidget {
  const LogoutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: (){
        //----------go to account screen -----
        showConfirmDialog(
            title: 'Are You Sure ?',
            content: 'Do you want to logout',
            logout: () {
              Get.back();
              ProfileController().logout();

            }
        );

      },
      leading: Icon(Icons.logout,size: 35,),
      title: Text("Log out"),
    );
  }
}
