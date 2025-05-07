import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:management/management.dart';

import 'management/payment_management.dart';
import 'management/payment_manager.dart';

@RoutePage()
class PaymentPage extends Managed<PaymentManager, PaymentState, PaymentEffect> {
  const PaymentPage({super.key});
  
  @override
  void init(context, manager) {}
  
  @override
  void listener(context, manager, effect) {}

  @override
  Widget builder(context, manager, state) {
    return Container();
  }
}
