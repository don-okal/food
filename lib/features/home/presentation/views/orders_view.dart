import 'package:flutter/material.dart';
import 'package:food/features/home/presentation/widgets/not_yet.dart';
import 'package:food/generated/l10n.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return NoYet(
      pageName: S.of(context).orders,
      icon: 'assets/images/orderCart.svg',
      noPageYet: S.of(context).noOrdersYet,
    );
  }
}
