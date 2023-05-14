import 'package:flutter/material.dart';
import 'package:myappp4/widgets/app_text.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool? isicon;

  AppButtons(
      {Key? key,
      this.isicon,
      this.text = 'hii',
      this.icon,
      required this.color,
      required this.backgroundColor,
      required this.size,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
        width: size,
        height: size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: backgroundColor,
            
            border: Border.all(color: borderColor),
            ),
        child: isicon == false ? Center(child: AppText(text: text!,color:color,)) : Center(child: Icon(icon, color: color,)));
  }
}
