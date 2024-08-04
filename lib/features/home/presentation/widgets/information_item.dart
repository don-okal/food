import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/utils/styles.dart';

class InformationItem extends StatelessWidget {
  const InformationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.only(end: 5.w, start: 16.w, top: 12.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50.h,
              width: 50.h,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/profileImage.png',
                    ),
                  ),
                  borderRadius: BorderRadius.circular(8)),
            ),
            SizedBox(
              width: 15.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ahmed Okal',
                  style: Styles.textStyle17,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(vertical: 5),
                  child: Text(
                    'ahmedokal6996@gmail.com',
                    style: Styles.textStyle12
                        .copyWith(color: Colors.grey, fontSize: 11.sp),
                  ),
                ),
                SizedBox(
                  width: 175.w,
                  child: Text(
                    'No 15 uti street off ovie palace road effurun delta state',
                    style: Styles.textStyle12
                        .copyWith(color: Colors.grey, fontSize: 11.sp),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
