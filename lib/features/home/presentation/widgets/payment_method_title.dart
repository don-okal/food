import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/utils/styles.dart';

class PaymentMethodTitle extends StatelessWidget {
  const PaymentMethodTitle({
    super.key,
    required this.item,
    required this.title,
    required this.color,
  });
  final String item, title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(
            end: 12.w,
          ),
          child: Container(
            height: 30.h,
            width: 30.h,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: EdgeInsetsDirectional.all(8.0.h),
              child: SvgPicture.asset(
                item,
                // ignore: deprecated_member_use
                color: Colors.white,
              ),
            ),
          ),
        ),
        Text(
          title,
          style: Styles.textStyle15.copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
