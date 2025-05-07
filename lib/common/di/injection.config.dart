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
import 'package:alhuruf/data/api/auth_api.dart' as _i683;
import 'package:alhuruf/data/api/profile_api.dart' as _i68;
import 'package:alhuruf/data/repo/auth_repo_impl.dart' as _i1051;
import 'package:alhuruf/data/repo/profile_repo_impl.dart' as _i758;
import 'package:alhuruf/domain/model/common_store.dart' as _i510;
import 'package:alhuruf/domain/model/default_theme_colors.dart' as _i397;
import 'package:alhuruf/domain/repo/auth_repo.dart' as _i272;
import 'package:alhuruf/domain/repo/profile_repo.dart' as _i471;
import 'package:alhuruf/presentation/app/management/app_manager.dart' as _i21;
import 'package:alhuruf/presentation/auth/auth/management/auth_manager.dart'
    as _i81;
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
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:pocketbase/pocketbase.dart' as _i169;
import 'package:rx_shared_preferences/rx_shared_preferences.dart' as _i579;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final networkModule = _$NetworkModule();
    final appModule = _$AppModule();
    await gh.factoryAsync<_i169.PocketBase>(
      () => networkModule.pb,
      preResolve: true,
    );
    gh.factory<_i84.HomeManager>(() => _i84.HomeManager());
    gh.factory<_i751.LessonsManager>(() => _i751.LessonsManager());
    gh.factory<_i21.AppManager>(() => _i21.AppManager());
    gh.factory<_i81.AuthManager>(() => _i81.AuthManager());
    gh.factory<_i920.SettingsManager>(() => _i920.SettingsManager());
    gh.factory<_i508.PaymentManager>(() => _i508.PaymentManager());
    gh.factory<_i611.LanguageManager>(() => _i611.LanguageManager());
    gh.singleton<_i397.DefaultThemeColors>(() => _i397.DefaultThemeColors());
    gh.lazySingleton<_i183.LanguageProvider>(() => _i183.LanguageProvider());
    gh.lazySingleton<_i974.Logger>(() => appModule.logger);
    gh.lazySingleton<_i917.Alice>(() => appModule.alice);
    gh.lazySingleton<_i579.RxSharedPreferences>(() => appModule.preferences);
    gh.lazySingleton<_i510.CommonStore>(() => _i510.CommonStore());
    gh.singleton<_i518.Display>(() => _i209.DisplayImpl());
    gh.lazySingleton<_i532.HeaderProvider>(
      () => _i532.HeaderProvider(gh<_i183.LanguageProvider>()),
    );
    gh.factory<_i683.AuthApi>(() => _i683.AuthApi(gh<_i169.PocketBase>()));
    gh.factory<_i68.ProfileApi>(() => _i68.ProfileApi(gh<_i169.PocketBase>()));
    gh.factory<_i272.AuthRepo>(() => _i1051.AuthRepoImpl(gh<_i683.AuthApi>()));
    gh.factory<_i471.ProfileRepo>(
      () => _i758.ProfileRepoImpl(gh<_i68.ProfileApi>()),
    );
    gh.factory<_i404.ProfileManager>(
      () => _i404.ProfileManager(gh<_i471.ProfileRepo>()),
    );
    gh.factory<_i226.SplashManager>(
      () => _i226.SplashManager(gh<_i272.AuthRepo>()),
    );
    gh.factory<_i71.LoginManager>(
      () => _i71.LoginManager(gh<_i272.AuthRepo>()),
    );
    return this;
  }
}

class _$NetworkModule extends _i839.NetworkModule {}

class _$AppModule extends _i533.AppModule {}
