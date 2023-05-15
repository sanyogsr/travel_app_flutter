import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myappp4/cubit/app_cubit_state.dart';
import 'package:myappp4/cubit/app_cubits.dart';
import 'package:myappp4/screens/Welcome_screen.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({ Key? key }) : super(key: key);

  @override
  _AppCubitLogicsState createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder:(context , state){
    
       if(state is WelcomeState){
        return WelcomeScreen();
              } else {
                return Container();
              }
        } ) ,
    );
  }
}