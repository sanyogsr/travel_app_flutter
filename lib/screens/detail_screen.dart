import 'package:flutter/material.dart';
import 'package:myappp4/widgets/app_buttons.dart';
import 'package:myappp4/widgets/app_large_text.dart';
import 'package:myappp4/widgets/app_text.dart';
import 'package:myappp4/widgets/responsive_button.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int gottenStars = 4;
  int selectedIndex =-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/model_one.jpg'),
                          fit: BoxFit.cover)),
                )),
            Positioned(
                left: 20,
                top: 70,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    )
                  ],
                )),
            Positioned(
                top: 320,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                              text: "Yosemite",
                              color: Colors.black.withOpacity(0.8)),
                          AppLargeText(text: '\$ 250', color: Colors.blueAccent)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          AppText(
                            text: 'USA, California',
                            color: Colors.blue,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: index < gottenStars
                                    ? Colors.yellow
                                    : Colors.black38,
                              );
                            }),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          AppText(
                            text: '(4.0)',
                            color: Colors.black38,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AppLargeText(
                        text: 'People',
                        color: Colors.black87,
                        size: 20,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      AppText(
                        text: 'Number of People in your Group',
                        color: Colors.black38,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () => {
                              setState(() {
                                selectedIndex = index;
                              })
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: AppButtons(
                                color: selectedIndex==index?Colors.white:Colors.grey.shade300,
                                backgroundColor: selectedIndex==index?Colors.black:Colors.grey.shade200,
                                borderColor: selectedIndex==index?Colors.black:Colors.transparent,
                                size: 50,
                                isicon: false,
                                text: (index + 1).toString(),
                              ),
                            ),
                          );
                        }),
                      )
                   , SizedBox(
                        height: 25,
                      ),
                      AppLargeText(text: 'Description',color: Colors.black87.withOpacity(0.8),size: 20,),
                       SizedBox(
                        height: 10,
                      ),
                      AppText(text: "You must go travel because trvelling helps get rid of your strss. In today's world there are people with just Stress. but its need money hahahaha..", color: Colors.black38,),
                      SizedBox(height: 20,),

                    ],
                  ),
                )),
                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Row(
                  children: [
                    AppButtons(color: Colors.grey.shade500, backgroundColor: Colors.white, size: 60, borderColor: Colors.black38, isicon: true,  icon: Icons.favorite_border ,
                    ),
                    SizedBox(width: 20,),
                    ResponsiveButton(
                      isResponsive: true,
                      color: Colors.blueAccent,
                     
                    )

                  ],
                  )
                   ),
          ],
        ),
      ),
    );
  }
}
