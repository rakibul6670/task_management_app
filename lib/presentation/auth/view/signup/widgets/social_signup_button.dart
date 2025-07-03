import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../shared/widgets/custom_icon_button.dart';

class SocialSignupButton extends StatelessWidget {
  const SocialSignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    //----------------Responsive size ------
    Size size =MediaQuery.sizeOf(context);

    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //--------Login with google ----
        CustomIconButton(
            onPressed: (){},
            height: 45,
            width: size.width * .40,

            buttonName:" Google",
            fontSize: 18,
            icon: SvgPicture.asset("assets/icons/google.svg",
              height:27,
              width: 27,
            )

        ),

        //--------Login with google ----
        CustomIconButton(
            onPressed: (){},
            height: 45,
            width: size.width * .40,

            buttonName:"Facebook",
            fontSize: 18,

            icon: SvgPicture.asset("assets/icons/facebook.svg",
              height:27,
              width: 27,
            )

        ),

      ],
    );
  }
}
