import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_management.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState() = _SplashState;
}

@freezed
class SplashEffect with _$SplashEffect {
  const factory SplashEffect.home() = _Home;

  const factory SplashEffect.login() = _Login;
}
