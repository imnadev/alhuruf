import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:management/management.dart';

import 'splash_management.dart';

@injectable
class SplashManager extends Manager<SplashState, SplashEffect> {
  SplashManager() : super(const SplashState()) {
    navigate();
  }

  void navigate() async {
    Timer(
      const Duration(milliseconds: 5),
      () => publish(const SplashEffect.login()),
    );
  }
}
