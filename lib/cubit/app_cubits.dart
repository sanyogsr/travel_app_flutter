import 'package:bloc/bloc.dart';
import 'package:myappp4/cubit/app_cubit_state.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits():super(InitialState()){
emit(WelcomeState());
  }
  
}