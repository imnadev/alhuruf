import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';

@injectable
class AuthApi {
  final PocketBase pb;
  late final collection = pb.collection('users');

  AuthApi(this.pb);

  Future<void> login(String email, [String? name]) async {
    try {
      final body = <String, dynamic>{
        "email": email,
        "password": 'password',
        "passwordConfirm": 'password',
        "name": name,
        "emailVisibility": true,
      };
      await collection.create(body: body);
    } catch (e) {
      if (e is! ClientException) rethrow;
      final code = e.response['data']['email']['code'];
      if (code != 'validation_not_unique') rethrow;
    } finally {
      await pb.collection('users').authWithPassword(email, 'password');
    }
  }

  Future<bool> authed() async => pb.authStore.isValid;
}
