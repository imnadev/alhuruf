import 'package:injectable/injectable.dart';
import 'package:management/management.dart';

import 'profile_management.dart';

@injectable
class ProfileManager extends Manager<ProfileState, ProfileEffect> {
  ProfileManager() : super(const ProfileState());

}
