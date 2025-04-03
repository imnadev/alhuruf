import 'package:alhuruf/common/di/injection.config.dart';
import 'package:alhuruf/common/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  getIt.registerLazySingleton<StackRouter>(() => AppRouter());
  await getIt.init();
}
