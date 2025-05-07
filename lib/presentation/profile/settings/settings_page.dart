import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:management/management.dart';

import 'management/settings_management.dart';
import 'management/settings_manager.dart';

@RoutePage()
class SettingsPage extends Managed<SettingsManager, SettingsState, SettingsEffect> {
  const SettingsPage({super.key});
  
  @override
  void init(context, manager) {}
  
  @override
  void listener(context, manager, effect) {}

  @override
  Widget builder(context, manager, state) {
    return Container();
  }
}
