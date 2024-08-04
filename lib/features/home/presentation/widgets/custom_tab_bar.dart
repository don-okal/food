import 'package:flutter/material.dart';
import 'package:food/features/home/presentation/widgets/custom_tab.dart';
import 'package:food/generated/l10n.dart';
import 'package:food/utils/constant.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      unselectedLabelColor: const Color(0xff9A9A9D),
      labelColor: kPrimaryColor,
      isScrollable: true,
      indicatorColor: kPrimaryColor,
      indicatorPadding: EdgeInsets.zero,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: 3,
      dividerColor: Colors.transparent,
      tabs: <Widget>[
        CustomTab(
          text: S.of(context).food,
        ),
        CustomTab(
          text: S.of(context).drinks,
        ),
        CustomTab(
          text: S.of(context).snacks,
        ),
        CustomTab(
          text: S.of(context).food,
        ),
        CustomTab(
          text: S.of(context).drinks,
        ),
        CustomTab(
          text: S.of(context).snacks,
        ),
      ],
    );
  }
}
