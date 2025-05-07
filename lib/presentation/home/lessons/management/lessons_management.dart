import 'package:freezed_annotation/freezed_annotation.dart';

part 'lessons_management.freezed.dart';

@freezed
class LessonsState with _$LessonsState {
  const factory LessonsState() = _LessonsState;
}

@freezed
class LessonsEffect with _$LessonsEffect {
  const factory LessonsEffect() = _LessonsEffect;
}
