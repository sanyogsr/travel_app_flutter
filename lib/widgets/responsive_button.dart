import 'package:flutter/material.dart';
import 'package:myappp4/screens/navscreens/bar_screen.dart';
import 'package:myappp4/screens/navscreens/home_screen.dart';
import 'package:myappp4/screens/navscreens/my_screen.dart';
import 'package:myappp4/screens/navscreens/search_screen.dart';
import 'package:myappp4/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  final Color color;
  

  ResponsiveButton({Key? key, required this.color, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: 60,
        
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(10),
          color: color,
          
        ),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            AppText(text: 'Book Trip Now',color: Colors.white,),
            SizedBox(width: 10,)
            ,  Icon(Icons.arrow_forward,color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
