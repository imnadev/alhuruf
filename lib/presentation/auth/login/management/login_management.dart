import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_management.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState() = _LoginState;
}

@freezed
class LoginEffect with _$LoginEffect {
  const factory LoginEffect.home() = _Home;
}
