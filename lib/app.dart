// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart' as arb;

import 'providers/language_provider.dart';
import 'utils/global_resources.dart';
import 'view/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: globalKey,
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget ?? Container()),
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.resize(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
        ],
        background: Container(
          color: const Color.fromRGBO(7, 17, 26, 1),
        ),
      ),
      locale: context.read<LanguageProvider>().language,
      supportedLocales: arb.AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        ...arb.AppLocalizations.localizationsDelegates,
      ],
      title: 'Carlos Parra Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const HomePage(),
    );
  }
}
