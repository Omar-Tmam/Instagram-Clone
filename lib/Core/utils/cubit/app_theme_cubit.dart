import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';




class AppThemeCubit extends Cubit<ThemeMode> {
  AppThemeCubit() : super(ThemeMode.system);


  void toggleTheme(){
    if(state == ThemeMode.light){
      emit(ThemeMode.dark);
    }else{
      emit(ThemeMode.light);
    }
  }
}
