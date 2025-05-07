import 'package:alhuruf/common/di/injection.dart';
import 'package:alhuruf/common/extensions/theme_extensions.dart';
import 'package:alhuruf/common/gen/assets.gen.dart';
import 'package:alhuruf/common/gen/strings.dart';
import 'package:alhuruf/common/router/app_router.dart';
import 'package:alhuruf/common/tools/language_provider.dart';
import 'package:alhuruf/common/utils/fixed_csv_asset_loader.dart';
import 'package:alhuruf/common/widgets/display/display_widget.dart';
import 'package:alice/alice.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:management/management.dart';

import 'management/app_management.dart';
import 'management/app_manager.dart';

@RoutePage()
class App extends Managed<AppManager, AppState, AppEffect> {
  const App({super.key});

  @override
  Widget builder(context, manager, state) {
    final appRouter = getIt<StackRouter>() as AppRouter;
    final alice = getIt<Alice>();

    alice.setNavigatorKey(appRouter.navigatorKey);
    return EasyLocalization(
      supportedLocales: Strings.supportedLocales,
      assetLoader: FixedCsvAssetLoader(),
      path: Assets.localization.translations,
      fallbackLocale: const Locale('uz', 'UZ'),
      startLocale: const Locale('uz', 'UZ'),
      child: Builder(
        builder: (context) {
          getIt<LanguageProvider>().setContext(context);
          return KeyboardDismisser(
            child: MaterialApp.router(
              title: 'Greenway',
              debugShowCheckedModeBanner: false,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              color: context.colors.onPrimary,
              theme: context.theme,
              routerConfig: appRouter.config(),
              builder: (context, child) {
                final mediaQuery = MediaQuery.of(context);
                return MediaQuery(
                  data: mediaQuery.copyWith(
                    textScaler: mediaQuery.textScaler.clamp(
                      minScaleFactor: 0.8,
                      maxScaleFactor: 1.2,
                    ),
                  ),
                  child: DisplayWidget(
                    key: ValueKey(state.language),
                    child: child!,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
