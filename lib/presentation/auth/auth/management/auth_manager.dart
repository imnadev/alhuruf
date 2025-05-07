import 'package:injectable/injectable.dart';
import 'package:management/management.dart';

import 'auth_management.dart';

@injectable
class AuthManager extends Manager<AuthState, AuthEffect> {
  AuthManager() : super(const AuthState());

}
