import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/utils/styles.dart';
import 'package:get/get.dart';

class PagesAppBar extends StatelessWidget {
  const PagesAppBar({
    super.key,
    required this.pageName,
  });

  final String pageName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          IconButton(
            padding: EdgeInsetsDirectional.only(start: 40.w),
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 15.h,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 95.w),
            child: Text(
              pageName,
              style: Styles.textStyle15,
            ),
          ),
        ],
      ),
    );
  }
}
