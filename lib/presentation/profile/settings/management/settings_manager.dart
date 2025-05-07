import 'package:injectable/injectable.dart';
import 'package:management/management.dart';

import 'settings_management.dart';

@injectable
class SettingsManager extends Manager<SettingsState, SettingsEffect> {
  SettingsManager() : super(const SettingsState());

}
