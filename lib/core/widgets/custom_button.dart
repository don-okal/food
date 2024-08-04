import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/utils/constant.dart';
import 'package:food/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.color = kPrimaryColor,
      this.textColor = const Color(0xffF6F6F9)});
  final void Function() onPressed;
  final String title;
  final Color? textColor;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 40.w),
      child: SizedBox(
        height: 60.h,
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(color),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            title,
            style: Styles.textStyle17.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
