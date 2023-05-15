import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myappp4/cubit/app_cubit_logics.dart';
import 'package:myappp4/cubit/app_cubits.dart';
import 'package:myappp4/screens/Welcome_screen.dart';
import 'package:myappp4/screens/detail_screen.dart';
import 'package:myappp4/screens/navscreens/home_screen.dart';
import 'package:myappp4/screens/navscreens/main_screen.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<AppCubits>(
        
        create: (context)=> 
        AppCubits(),

      
      child: AppCubitLogics(),
      ),
    );
  }
}
