import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();

BuildContext get globalContext => globalKey.currentState!.context;

AppLocalizations get translate => AppLocalizations.of(globalContext)!;

Future<String?> getString(String key) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(key);
}

Future<void> setString(String key, String value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(key, value);
}
