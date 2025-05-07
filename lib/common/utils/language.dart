import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

enum Language {
  UZ,
  EN,
  RU;

  static Language from(BuildContext context) {
    return Language.values.firstWhere(
      (element) => element.locale.languageCode == context.locale.languageCode,
    );
  }
}

extension LanguageExtensions on Language {
  String get name {
    switch (this) {
      case Language.UZ:
        return 'O\'zbekcha';
      case Language.EN:
        return 'English';
      case Language.RU:
        return 'Русский';
    }
  }

  Locale get locale {
    switch (this) {
      case Language.EN:
        return const Locale('en', 'US');
      case Language.UZ:
        return const Locale('uz', 'UZ');
      case Language.RU:
        return const Locale('ru', 'RU');
    }
  }
}
