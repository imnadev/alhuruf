import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';

@injectable
class ProfileApi {
  final PocketBase pb;

  ProfileApi(this.pb);

  Future<void> logout() async => pb.authStore.clear();
}
