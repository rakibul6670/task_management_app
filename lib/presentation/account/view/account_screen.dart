import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/shared/widgets/custom_text_field.dart';
import 'package:task_app/shared/widgets/custom_button.dart';
import '../../../app/constants/constant_color.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //--------------responsive size ---------
    final Size size=MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: ConstantColor.appBg,

      //===================== AppBar Section =========
      appBar: AppBar(
        backgroundColor: Color(0xFFffc557),
        leading: InkWell(
          onTap: (){
            //---------------back to profile ------
            Get.offNamed("/profile");
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
          child: Form(
              //key:_formKey;
              child: Column(

                children: [
                  //-------------------User Name ---------
                  CustomTextField(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 45
                    ),

                    prefix: Icon(Icons.person,
                      size: 30,
                      color: Color(0xFFFFC557),
                    ),

                    fillColor: Color(0xFFEEEEEE),
                    borderRadius:17,
                    hintText: "Rakibul",
                    hintTextStyle: TextStyle(
                        color: Colors.black54
                    ),
                  ),

                  SizedBox(height: 15,),



                  //-------------------Email Address ---------
                  CustomTextField(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 45
                    ),

                    prefix: Icon(Icons.email,
                      size: 30,
                      color: Color(0xFFFFC557),
                    ),

                    fillColor: Color(0xFFEEEEEE),
                    borderRadius:17,
                    hintText: "rakibulpb670@gmail.com",
                    hintTextStyle: TextStyle(
                        color: Colors.black54
                    ),
                  ),

                  SizedBox(height: 15,),



                  //-------------------Password ---------
                  CustomTextField(
                    obscureText: true,

                    contentPadding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 45
                    ),

                    prefix: Icon(Icons.password,
                      size: 30,
                      color: Color(0xFFFFC557),
                    ),

                    suffix: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.visibility_off,
                            size: 30,
                            color: Color(0xFFFFC557),
                        )
                    ),

                    fillColor: Color(0xFFEEEEEE),
                    borderRadius:17,
                    hintText: "1234567",
                    hintTextStyle: TextStyle(
                        color: Colors.black54
                    ),
                  ),




                  SizedBox(height: 30,),
                  //-------------------Save Button ---------
                  CustomButton(
                      height: 50,
                      width: size.width * .50,
                      buttonName: "Save",
                      backgroundGradient: LinearGradient(
                          colors:[
                            Color(0xFFFFC557),
                            Color(0xFFFFC557),
                          ]
                      ),
                  )
                ],

              )

          ),
        ),
      )),

    );
  }
}
