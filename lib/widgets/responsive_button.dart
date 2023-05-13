import 'package:flutter/material.dart';
import 'package:myappp4/screens/navscreens/bar_screen.dart';
import 'package:myappp4/screens/navscreens/home_screen.dart';
import 'package:myappp4/screens/navscreens/my_screen.dart';
import 'package:myappp4/screens/navscreens/search_screen.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
    );
  }
}
