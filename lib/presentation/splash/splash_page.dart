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
  void listener(context, manager, effect) {}

  @override
  Widget builder(context, manager, state) {
    return Container();
  }
}
