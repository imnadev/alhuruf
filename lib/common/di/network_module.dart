import 'package:injectable/injectable.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

@module
abstract class NetworkModule {
  @preResolve
  Future<PocketBase> get pb async {
    final preferences = await SharedPreferences.getInstance();
    final key = 'pb_auth';
    return PocketBase(
      'https://alhuruf.pockethost.io/',
      authStore: AsyncAuthStore(
        initial: preferences.getString(key),
        save: (value) => preferences.setString(key, value),
        clear: () => preferences.remove(key),
      ),
    );
  }
}
