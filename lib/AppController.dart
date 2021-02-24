import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier{
  static AppController instance = AppController();

  bool isDartTheme = false;
  // ignore: non_constant_identifier_names
  ChangeTheme(){
    isDartTheme = !isDartTheme;
    notifyListeners();
  }
}