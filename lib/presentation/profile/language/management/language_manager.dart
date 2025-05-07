import 'package:injectable/injectable.dart';
import 'package:management/management.dart';

import 'language_management.dart';

@injectable
class LanguageManager extends Manager<LanguageState, LanguageEffect> {
  LanguageManager() : super(const LanguageState());

}
