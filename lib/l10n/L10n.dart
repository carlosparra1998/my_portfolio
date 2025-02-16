import 'package:flag/flag.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/utils/global_resources.dart';

class L10n {
  static final all = [
    const Locale('es'),
    const Locale('en'),
  ];

  static final flags = List.generate(
    all.length,
    (ix) => getFlag(code: all[ix].languageCode),
  );

  static String getLanguageName(String code) {
    switch (code) {
      case 'es':
        return translate.spanish;
      default:
        return translate.english;
    }
  }

  static Flag getFlag({required String code, double? size}) {
    size ??= 10;
    switch (code) {
      case 'es':
        return Flag.fromCode(
          FlagsCode.ES,
          height: size,
          width: size * 1.2,
          fit: BoxFit.fill,
        );
      default:
        return Flag.fromCode(
          FlagsCode.GB_ENG,
          height: size,
          width: size * 1.2,
          fit: BoxFit.fill,
        );
    }
  }
}
