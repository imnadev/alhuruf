import 'package:alhuruf/data/api/profile_api.dart';
import 'package:alhuruf/domain/repo/profile_repo.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProfileRepo)
class ProfileRepoImpl extends ProfileRepo {
  final ProfileApi _api;

  ProfileRepoImpl(this._api);

  @override
  Future<void> logout() async {
    await _api.logout();
    final googleSignIn = GoogleSignIn(scopes: ['email']);
    if (googleSignIn.currentUser != null) {
      await googleSignIn.signOut();
    }
  }
}
