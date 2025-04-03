import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_management.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState() = _AppState;
}

@freezed
class AppEffect with _$AppEffect {
  const factory AppEffect() = _AppEffect;
}
