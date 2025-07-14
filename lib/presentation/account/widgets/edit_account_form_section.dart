
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/presentation/account/widgets/profile_image_section.dart';
import '../../../shared/widgets/custom_button.dart';
import '../../../shared/widgets/custom_text_field.dart';
import '../controller/account_controller.dart';

class EditAccountFormSection extends StatelessWidget {
   EditAccountFormSection({super.key});


  final AccountController accountController =Get.find<AccountController>();


  @override
  Widget build(BuildContext context) {
    //--------------responsive size ---------
    final Size size=MediaQuery.sizeOf(context);
    return Form(
        key:accountController.formKey,
        child: Column(

          children: [
            //-------------------User Name ---------
            CustomTextField(
              controller: accountController.nameController,
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
              hintText: "Enter your new name",
              hintTextStyle: TextStyle(
                  color: Colors.black54
              ),
            ),
            SizedBox(height: 10,),
            //-------------------Name Error Message -------
            Obx(()=> Text(accountController.nameError.value,
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 12
              ),)),

            SizedBox(height: 15,),



            //-------------------Email Address ---------
            CustomTextField(
              controller: accountController.emailController,
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
              hintText: "Enter your new email",
              hintTextStyle: TextStyle(
                  color: Colors.black54
              ),
            ),

            SizedBox(height: 10,),
            //-------------------Email Error Message -------
            Obx(()=> Text(accountController.emailError.value,
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 12
              ),)),

            SizedBox(height: 15,),



            //-------------------Password ---------
             Obx((){
               var isObscure =accountController.isObscure.value;
               return CustomTextField(
                 obscureText: isObscure,
                 controller: accountController.passwordController,
                 contentPadding: EdgeInsets.symmetric(
                     vertical: 20,
                     horizontal: 45
                 ),

                 prefix: Icon(Icons.password,
                   size: 30,
                   color: Color(0xFFFFC557),
                 ),

                 suffix:  IconButton(
                     onPressed: (){
                       accountController.isObscure.value = !accountController.isObscure.value;
                     },
                     icon:accountController.isObscure.value
                         ?Icon(Icons.visibility_off,
                       size: 30,
                       color: Color(0xFFFFC557),
                     ): Icon(Icons.visibility,
                       size: 30,
                       color: Color(0xFFFFC557),
                     )
                 ),

                 fillColor: Color(0xFFEEEEEE),
                 borderRadius:17,
                 hintText: "Enter your new password",
                 hintTextStyle: TextStyle(
                     color: Colors.black54
                 ),
               );
             }),
            SizedBox(height: 10,),
            //-------------------Password Error Message -------
            Obx(()=>Text(accountController.passwordError.value,
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 12
              ),),),


            //----------------------Profile image ------------
            SizedBox(height: 15,),
            ProfileImageSection(),


            SizedBox(height: 30,),
            //-------------------Save Button ---------
            accountController.isLoading.value
                ?Center(child: CircularProgressIndicator( color:  Colors.green,))
                :CustomButton(
              onPressed: (){
               if(accountController.formKey.currentState!.validate()){
                 accountController.validateEditAccount();
               }
              },
              height: 50,
              width: size.width * .50,
              buttonName:"Save",
              backgroundGradient: LinearGradient(
                  colors:[
                    Color(0xFFFFC557),
                    Color(0xFFFFC557),
                  ]
              ),
            ),
          ],

        )

    );
  }
}
