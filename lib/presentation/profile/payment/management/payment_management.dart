import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_management.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState() = _PaymentState;
}

@freezed
class PaymentEffect with _$PaymentEffect {
  const factory PaymentEffect() = _PaymentEffect;
}
