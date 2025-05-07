import 'package:alhuruf/domain/repo/auth_repo.dart';
import 'package:injectable/injectable.dart';
import 'package:management/management.dart';

import 'login_management.dart';

@injectable
class LoginManager extends Manager<LoginState, LoginEffect> {
  LoginManager(this._repo) : super(const LoginState());

  final AuthRepo _repo;

  Future<void> loginWithApple() => _repo.loginWithApple().handle(
    onData: (_) => publish(LoginEffect.home()),
  );

  Future<void> loginWithGoogle() => _repo.loginWithGoogle().handle(
    onData: (_) => publish(LoginEffect.home()),
  );

}
