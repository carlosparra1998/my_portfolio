import 'package:flutter/material.dart';
import 'package:my_portfolio/l10n/L10n.dart';
import 'package:my_portfolio/utils/global_resources.dart';

class LanguageProvider with ChangeNotifier {
  Locale _language = L10n.all.first;

  Locale getLanguage() => _language;

  LanguageProvider() {
    initLanguage();
  }

  void initLanguage() async {
    _language = Locale(await getString('language') ?? 'es');
    notifyListeners();
  }

  void changeLanguage(Locale locale) async{
    _language = locale;
    await setString('language', locale.languageCode);
    notifyListeners();
  }
}
