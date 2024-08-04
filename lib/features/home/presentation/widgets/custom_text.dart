import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/generated/l10n.dart';
import 'package:food/utils/styles.dart';

class DeliciousFoodForYou extends StatelessWidget {
  const DeliciousFoodForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: 40.w,
        end: 115.w,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16.h,
          ),
          Text(
            S.of(context).deliciousFoodForYou,
            style: Styles.textStyle32
                .copyWith(fontWeight: FontWeight.bold, height: 0),
          ),
          SizedBox(
            height: 18.h,
          ),
        ],
      ),
    );
  }
}
