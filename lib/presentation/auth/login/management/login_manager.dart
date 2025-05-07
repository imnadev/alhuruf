import 'package:injectable/injectable.dart';
import 'package:management/management.dart';

import 'login_management.dart';

@injectable
class LoginManager extends Manager<LoginState, LoginEffect> {
  LoginManager() : super(const LoginState());

}
