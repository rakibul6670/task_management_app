import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/presentation/account/widgets/edit_account_form_section.dart';
import '../../../app/constants/constant_color.dart';

class AccountScreen extends StatelessWidget {
   const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //--------------responsive size ---------
   // final Size size=MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: ConstantColor.appBg,

      //===================== AppBar Section =========
      appBar: AppBar(
        backgroundColor: Color(0xFFffc557),
        leading: InkWell(
          onTap: (){
            //---------------back to profile ------
            Get.back();
          },
          child: Icon(Icons.arrow_back,size: 30,),
        ),
        title: Text("Edit Account",style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500
        ),),
        centerTitle: true,
      ),


      //================== Body Section =============
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: EditAccountFormSection(),
        ),
      )),

    );
  }
}
