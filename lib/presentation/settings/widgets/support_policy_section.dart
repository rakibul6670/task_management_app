
import 'package:flutter/material.dart';
import '../../../shared/widgets/custom_info_title.dart';

class SupportPolicySection extends StatelessWidget {
  const SupportPolicySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          //---------------Rate App --------
          CustomInfoTitle(
            onTap: (){},
            title: "Rate App",
            leading: Icon(Icons.star_rate),
          ),

          //---------------Share App --------
          CustomInfoTitle(
            onTap: (){
              //action
            },
            title: "Share App",
            leading: Icon(Icons.share),
          ),

          //---------------Feedback--------
          CustomInfoTitle(
            onTap: (){},
            title: "Feedback",
            leading: Icon(Icons.feedback),
          ),

          //---------------Privacy & Policy --------
          CustomInfoTitle(
            onTap: (){},
            title: "Privacy & Policy",
            leading: Icon(Icons.privacy_tip),
          ),

          //---------------Term & Condition--------
          CustomInfoTitle(
            onTap: (){},
            title: "Terms & Condition",
            leading: Icon(Icons.article_outlined),
          ),

        ],
      ),
    );
  }
}
