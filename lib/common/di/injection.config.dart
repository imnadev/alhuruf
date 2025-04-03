// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:alhuruf/common/di/app_module.dart' as _i533;
import 'package:alhuruf/common/di/network_module.dart' as _i839;
import 'package:alhuruf/presentation/app/management/app_manager.dart' as _i21;
import 'package:alice/alice.dart' as _i917;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:rx_shared_preferences/rx_shared_preferences.dart' as _i579;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final networkModule = _$NetworkModule();
    final appModule = _$AppModule();
    gh.factory<_i361.BaseOptions>(() => networkModule.baseOptions());
    gh.factory<_i21.AppManager>(() => _i21.AppManager());
    gh.lazySingleton<_i974.Logger>(() => appModule.logger);
    gh.lazySingleton<_i917.Alice>(() => appModule.alice);
    gh.lazySingleton<_i579.RxSharedPreferences>(() => appModule.preferences);
    gh.factory<_i361.Dio>(
      () => networkModule.dio(gh<_i361.BaseOptions>(), gh<_i917.Alice>()),
    );
    return this;
  }
}

class _$NetworkModule extends _i839.NetworkModule {}

class _$AppModule extends _i533.AppModule {}
