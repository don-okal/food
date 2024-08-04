import 'package:flutter/material.dart';
import 'package:food/features/home/presentation/widgets/not_yet.dart';
import 'package:food/generated/l10n.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return NoYet(
      pageName: S.of(context).history,
      icon: 'assets/images/date.svg',
      noPageYet: S.of(context).noHistoryYet,
    );
  }
}
