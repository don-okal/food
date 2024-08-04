import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.icon1,
    required this.icon2,
    this.onTab1,
    this.onTab2,
  });
  final Widget icon2;
  final Widget icon1;
  final void Function()? onTab1, onTab2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        end: 40.w,
        start: 40.w,
      ),
      child: Row(
        children: [
          IconButton(
              padding: const EdgeInsets.all(0),
              style: IconButton.styleFrom(
                alignment: Alignment.centerLeft,
              ),
              onPressed: onTab1,
              icon: icon1),
          const Spacer(),
          IconButton(
              padding: const EdgeInsets.all(0),
              style: IconButton.styleFrom(),
              onPressed: onTab2,
              icon: icon2),
        ],
      ),
    );
  }
}
