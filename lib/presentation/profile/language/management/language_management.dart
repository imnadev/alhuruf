import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_management.freezed.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState() = _LanguageState;
}

@freezed
class LanguageEffect with _$LanguageEffect {
  const factory LanguageEffect() = _LanguageEffect;
}
