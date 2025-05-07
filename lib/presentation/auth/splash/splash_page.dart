import 'package:alhuruf/common/extensions/theme_extensions.dart';
import 'package:alhuruf/common/gen/assets.gen.dart';
import 'package:alhuruf/common/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:management/management.dart';

import 'management/splash_management.dart';
import 'management/splash_manager.dart';

@RoutePage()
class SplashPage extends Managed<SplashManager, SplashState, SplashEffect> {
  const SplashPage({super.key});

  @override
  void init(context, manager) {}

  @override
  void listener(context, manager, effect) {
    switch (effect) {
      case Home():
        context.router.replace(HomeRoute());
        break;
      case Login():
        context.router.replace(AuthRoute());
        break;
    }
  }

  @override
  Widget builder(context, manager, state) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Spacer(),
              Assets.icons.alHuruf.image(height: 59),
              Spacer(),
              CircularProgressIndicator.adaptive(
                backgroundColor: context.colors.onPrimary,
              ),
              SizedBox(height: 56),
            ],
          ),
        ),
      ),
    );
  }
}
