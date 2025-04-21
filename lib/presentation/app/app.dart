import 'package:alhuruf/common/di/injection.dart';
import 'package:alhuruf/common/gen/assets.gen.dart';
import 'package:alhuruf/common/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:management/management.dart';
import 'package:alhuruf/common/gen/strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';

import 'management/app_management.dart';
import 'management/app_manager.dart';

@RoutePage()
class App extends Managed<AppManager, AppState, AppEffect> {
  const App({super.key});

  @override
  Widget builder(context, manager, state) {
    final router = getIt<StackRouter>() as AppRouter;
    return EasyLocalization(
      supportedLocales: Strings.supportedLocales,
      assetLoader: CsvAssetLoader(),
      path: Assets.localization.translations,
      fallbackLocale: Strings.supportedLocales.first,
      startLocale: Strings.supportedLocales.first,
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            routerConfig: router.config(),
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
          );
        }
      ),
    );
  }
}
