import 'package:alhuruf/common/utils/language.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_management.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState({
    Language? language,
  }) = _AppState;
}

@freezed
class AppEffect with _$AppEffect {
  const factory AppEffect() = _AppEffect;
}
