import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/utils/constant.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: SizedBox(
        width: 85.w,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              fontFamily: kFontDamily,
            ),
          ),
        ),
      ),
    );
  }
}
