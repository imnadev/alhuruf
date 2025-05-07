abstract class AuthRepo {
  Future<void> loginWithGoogle();

  Future<void> loginWithApple();

  Future<bool> authed();
}
