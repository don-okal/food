import 'package:flutter/material.dart';
import 'package:food/utils/constant.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CustomRefreshHeader extends StatelessWidget {
  const CustomRefreshHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      builder: (BuildContext context, RefreshStatus? status) {
        Widget body;
        if (status == RefreshStatus.idle) {
          body = const Text("Pull down to refresh");
        } else if (status == RefreshStatus.refreshing) {
          body = const CircularProgressIndicator(
            color: kPrimaryColor,
          );
        } else if (status == RefreshStatus.completed) {
          body = const Text("Refresh completed");
        } else if (status == RefreshStatus.failed) {
          body = const Text("Refresh failed");
        } else {
          body = const Text("Release to refresh");
        }
        return SizedBox(
          child: Center(child: body),
        );
      },
    );
  }
}
