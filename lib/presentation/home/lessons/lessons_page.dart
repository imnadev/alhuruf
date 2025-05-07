import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:management/management.dart';

import 'management/lessons_management.dart';
import 'management/lessons_manager.dart';

@RoutePage()
class LessonsPage extends Managed<LessonsManager, LessonsState, LessonsEffect> {
  const LessonsPage({super.key});
  
  @override
  void init(context, manager) {}
  
  @override
  void listener(context, manager, effect) {}

  @override
  Widget builder(context, manager, state) {
    return Container();
  }
}
