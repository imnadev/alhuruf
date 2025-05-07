import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_management.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState() = _AuthState;
}

@freezed
sealed class AuthEffect with _$AuthEffect {
  const factory AuthEffect() = _AuthEffect;
}
