import 'package:alhuruf/domain/repo/profile_repo.dart';
import 'package:injectable/injectable.dart';
import 'package:management/management.dart';

import 'profile_management.dart';

@injectable
class ProfileManager extends Manager<ProfileState, ProfileEffect> {
  ProfileManager(this._repo) : super(const ProfileState());

  final ProfileRepo _repo;

  Future<void> logout() =>
      _repo.logout().handle(onData: (_) => publish(ProfileEffect.auth()));
}
