import 'package:alhuruf/common/utils/language.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LanguageProvider {
  late BuildContext context;

  void setContext(BuildContext context) => this.context = context;

  Language get language => Language.from(context);
}
