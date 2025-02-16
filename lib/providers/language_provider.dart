import 'package:flutter/material.dart';

class LanguageProvider with ChangeNotifier{
  Locale language = Locale('en');

  void changeLanguage(String code){
    language = Locale(code);
    notifyListeners();
  }
}