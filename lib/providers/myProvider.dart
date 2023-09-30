import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{

  String language = "en";

  ThemeMode mode = ThemeMode.light;

  void changLanguage(String lang){
    language = lang;
    notifyListeners();
  }

  void changeMode(ThemeMode mymode){
    mode = mymode;
    notifyListeners();
  }
}