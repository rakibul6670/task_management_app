import 'package:flutter/material.dart';

class CustomInfoTitle extends StatelessWidget {

  final String title;
  final double? titleFontSize;
  final FontWeight? titleFontWeight;
  final Color? titleColor;


  final String? subtitle;
  final double? subtitleFontSize;
  final Color? subtitleColor;

  final Widget leading;
  final Function()? onTap;

  const CustomInfoTitle({super.key,
    required this.title,
    this.subtitle,
    required this.leading,
    this.onTap,
    this.titleFontSize,
    this.titleFontWeight,
    this.titleColor,
    this.subtitleFontSize,
    this.subtitleColor
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: leading,
      title: Text(title,style: TextStyle(
        fontWeight:titleFontWeight,
        fontSize: titleFontSize?? 17,
        color:titleColor?? Colors.black
      ),),

      subtitle: subtitle != null
          ? Text(
        subtitle!,
        style: TextStyle(
          fontSize: subtitleFontSize ?? 14,
          color: subtitleColor ?? Colors.grey[700],
        ),
      )
          : null,
    );
  }
}
