import 'package:injectable/injectable.dart';
import 'package:management/management.dart';

import 'payment_management.dart';

@injectable
class PaymentManager extends Manager<PaymentState, PaymentEffect> {
  PaymentManager() : super(const PaymentState());

}
