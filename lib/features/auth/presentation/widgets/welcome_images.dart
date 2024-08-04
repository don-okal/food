import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/utils/assets.dart';

class WelcomeImages extends StatelessWidget {
  const WelcomeImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 35.h),
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: 160.w,
              top: 80.h,
              child: Image.asset(
                AssetsData.boy,
                width: 200.w,
              ),
            ),
            Opacity(
              opacity: 1,
              child: Image.asset(
                AssetsData.girl,
                width: 260.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
