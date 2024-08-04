import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/utils/styles.dart';
import 'package:food/features/auth/presentation/widgets/custom_circle_avatar.dart';
import 'package:food/generated/l10n.dart';

class FoodForEveryOne extends StatelessWidget {
  const FoodForEveryOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: 40.w,
        end: 40.w,
        top: 40.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomCircleAvatar(
            radius: 28.h,
            hight: 40.h,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            S.of(context).foodForEveryOne,
            style: Styles.textStyle48.copyWith(height: 0.7.h),
          ),
        ],
      ),
    );
  }
}
