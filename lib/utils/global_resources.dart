import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();

BuildContext get globalContext => globalKey.currentState!.context;

AppLocalizations get translate => AppLocalizations.of(globalContext)!;