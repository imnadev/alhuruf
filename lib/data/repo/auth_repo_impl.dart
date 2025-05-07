import 'package:alhuruf/data/api/auth_api.dart';
import 'package:alhuruf/domain/repo/auth_repo.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

@Injectable(as: AuthRepo)
class AuthRepoImpl extends AuthRepo {
  final AuthApi _api;

  AuthRepoImpl(this._api);

  @override
  Future<void> loginWithGoogle() async {
    final googleSignIn = GoogleSignIn(scopes: ['email']);
    final account = await googleSignIn.signIn();
    if (account == null) throw Exception('User canceled login');
    await _api.login(account.email, account.displayName);
  }

  @override
  Future<void> loginWithApple() async {
    final redirectUri = 'https://al-huruf.firebaseapp.com/__/auth/handler';
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      webAuthenticationOptions: WebAuthenticationOptions(
        clientId: 'com.alhuruf.arabic.quran.tajweed.apple.sign.in',
        redirectUri: Uri.parse(redirectUri),
      ),
    );

    final user = JwtDecoder.decode(credential.identityToken!);
    await _api.login(user['email']);
  }

  @override
  Future<bool> authed() => _api.authed();
}
