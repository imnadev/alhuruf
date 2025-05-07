import 'package:alhuruf/common/tools/language_provider.dart';
import 'package:alhuruf/common/utils/language.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HeaderProvider {
  final LanguageProvider languageProvider;

  HeaderProvider(this.languageProvider);

  Map<String, String> get headers {
    return {'Accept-Language': languageProvider.language.locale.languageCode};
  }
}
