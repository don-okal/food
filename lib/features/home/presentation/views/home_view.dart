import 'package:flutter/material.dart';
import 'package:food/features/home/presentation/widgets/custom_scroll_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 6,
      child: Scaffold(
        body: CustomCustomScrollView(),
      ),
    );
  }
}
