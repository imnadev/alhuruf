import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:management/management.dart';

import 'management/language_management.dart';
import 'management/language_manager.dart';

@RoutePage()
class LanguagePage extends Managed<LanguageManager, LanguageState, LanguageEffect> {
  const LanguagePage({super.key});
  
  @override
  void init(context, manager) {}
  
  @override
  void listener(context, manager, effect) {}

  @override
  Widget builder(context, manager, state) {
    return Container();
  }
}
