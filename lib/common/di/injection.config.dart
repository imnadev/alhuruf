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
import 'package:alhuruf/common/tools/header_provider.dart' as _i532;
import 'package:alhuruf/common/tools/language_provider.dart' as _i183;
import 'package:alhuruf/common/widgets/display/display.dart' as _i518;
import 'package:alhuruf/common/widgets/display/display_impl.dart' as _i209;
import 'package:alhuruf/domain/model/common_store.dart' as _i510;
import 'package:alhuruf/domain/model/default_theme_colors.dart' as _i397;
import 'package:alhuruf/presentation/app/management/app_manager.dart' as _i21;
import 'package:alhuruf/presentation/auth/login/management/login_manager.dart'
    as _i71;
import 'package:alhuruf/presentation/auth/splash/management/splash_manager.dart'
    as _i226;
import 'package:alhuruf/presentation/home/home/management/home_manager.dart'
    as _i84;
import 'package:alhuruf/presentation/home/lessons/management/lessons_manager.dart'
    as _i751;
import 'package:alhuruf/presentation/profile/language/management/language_manager.dart'
    as _i611;
import 'package:alhuruf/presentation/profile/payment/management/payment_manager.dart'
    as _i508;
import 'package:alhuruf/presentation/profile/profile/management/profile_manager.dart'
    as _i404;
import 'package:alhuruf/presentation/profile/settings/management/settings_manager.dart'
    as _i920;
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
    gh.factory<_i226.SplashManager>(() => _i226.SplashManager());
    gh.factory<_i71.LoginManager>(() => _i71.LoginManager());
    gh.factory<_i84.HomeManager>(() => _i84.HomeManager());
    gh.factory<_i404.ProfileManager>(() => _i404.ProfileManager());
    gh.factory<_i920.SettingsManager>(() => _i920.SettingsManager());
    gh.factory<_i611.LanguageManager>(() => _i611.LanguageManager());
    gh.factory<_i751.LessonsManager>(() => _i751.LessonsManager());
    gh.factory<_i508.PaymentManager>(() => _i508.PaymentManager());
    gh.singleton<_i397.DefaultThemeColors>(() => _i397.DefaultThemeColors());
    gh.lazySingleton<_i183.LanguageProvider>(() => _i183.LanguageProvider());
    gh.lazySingleton<_i974.Logger>(() => appModule.logger);
    gh.lazySingleton<_i917.Alice>(() => appModule.alice);
    gh.lazySingleton<_i579.RxSharedPreferences>(() => appModule.preferences);
    gh.lazySingleton<_i510.CommonStore>(() => _i510.CommonStore());
    gh.factory<_i361.Dio>(
      () => networkModule.dio(gh<_i361.BaseOptions>(), gh<_i917.Alice>()),
    );
    gh.singleton<_i518.Display>(() => _i209.DisplayImpl());
    gh.lazySingleton<_i532.HeaderProvider>(
      () => _i532.HeaderProvider(gh<_i183.LanguageProvider>()),
    );
    return this;
  }
}

class _$NetworkModule extends _i839.NetworkModule {}

class _$AppModule extends _i533.AppModule {}
