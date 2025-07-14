
import 'package:flutter/material.dart';

import '../../../shared/widgets/custom_info_title.dart';

class AppInformationSection extends StatelessWidget {
  const AppInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          //---------------Version -------------------
          CustomInfoTitle(
            title: "Version",
            leading: Icon(Icons.verified_sharp),
            subtitle: "v1.0.0",
          ),

          //---------------Developer -----------------
          CustomInfoTitle(
            title: "Developer",
            leading: Icon(Icons.person),
            subtitle: "Rakibul Hossain",
          ),

          //---------------Contact -------------------
          ExpansionTile(

            leading: Icon(Icons.contact_mail),
            title:Text("Contact info"),
            children: [
              //-------------Email -----
              CustomInfoTitle(
                title: "Email",
                subtitle: "rakibulpb6670@gmail.com",
                leading: Icon(Icons.email),
              ),

              //-------------Phone number --
              CustomInfoTitle(
                title: "Phone",
                subtitle: "01560029377",
                leading: Icon(Icons.phone),
              ),

              //-----------Email ------
              CustomInfoTitle(
                title: "GitHub",
                subtitle: "https://github.com/rakibul6670",
                leading: Icon(Icons.code),
              ),

            ],
          )

        ],
      ),
    );
  }
}
