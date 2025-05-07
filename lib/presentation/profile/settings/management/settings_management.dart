import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_management.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState() = _SettingsState;
}

@freezed
class SettingsEffect with _$SettingsEffect {
  const factory SettingsEffect() = _SettingsEffect;
}
