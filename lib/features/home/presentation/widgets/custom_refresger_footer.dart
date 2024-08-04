import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CustomLoadingFooter extends StatelessWidget {
  const CustomLoadingFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFooter(
      builder: (BuildContext context, LoadStatus? status) {
        Widget body;
        if (status == LoadStatus.idle) {
          body = const Text("Pull up to load more");
        } else if (status == LoadStatus.loading) {
          body = const CircularProgressIndicator(
            color: Colors.green,
          );
        } else if (status == LoadStatus.failed) {
          body = const Text("Load failed! Click retry!");
        } else if (status == LoadStatus.canLoading) {
          body = const Text("Release to load more");
        } else {
          body = const Text("No more data");
        }
        return SizedBox(
          child: Center(child: body),
        );
      },
    );
  }
}
