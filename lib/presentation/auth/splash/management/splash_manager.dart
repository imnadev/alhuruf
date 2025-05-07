import 'package:alhuruf/domain/repo/auth_repo.dart';
import 'package:injectable/injectable.dart';
import 'package:management/management.dart';

import 'splash_management.dart';

@injectable
class SplashManager extends Manager<SplashState, SplashEffect> {
  SplashManager(this._repo) : super(const SplashState()) {
    _navigate();
  }

  final AuthRepo _repo;

  void _navigate() => Future.delayed(const Duration(seconds: 2))
      .then((_) => _repo.authed())
      .handle(
        onData: (authed) {
          final effect =
              authed ? const SplashEffect.home() : const SplashEffect.login();
          publish(effect);
        },
      );
}
