import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_management.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState() = _ProfileState;
}

@freezed
sealed class ProfileEffect with _$ProfileEffect {
  const factory ProfileEffect.auth() = Auth;
}
