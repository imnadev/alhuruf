import 'package:injectable/injectable.dart';
import 'package:management/management.dart';

import 'lessons_management.dart';

@injectable
class LessonsManager extends Manager<LessonsState, LessonsEffect> {
  LessonsManager() : super(const LessonsState());

}
