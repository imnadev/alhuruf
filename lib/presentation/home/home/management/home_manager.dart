import 'package:injectable/injectable.dart';
import 'package:management/management.dart';

import 'home_management.dart';

@injectable
class HomeManager extends Manager<HomeState, HomeEffect> {
  HomeManager() : super(const HomeState());

}
