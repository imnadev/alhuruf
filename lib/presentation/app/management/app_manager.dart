import 'package:injectable/injectable.dart';
import 'package:management/management.dart';

import 'app_management.dart';

@injectable
class AppManager extends Manager<AppState, AppEffect> {
  AppManager() : super(const AppState());

}
