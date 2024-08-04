import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/features/home/presentation/widgets/pages_app_bar.dart';
import 'package:food/generated/l10n.dart';
import 'package:food/utils/styles.dart';
import 'package:food/widgets/custom_button.dart';
import 'package:get/get.dart';

class NoYet extends StatelessWidget {
  const NoYet(
      {super.key,
      required this.pageName,
      required this.icon,
      required this.noPageYet});
  final String pageName, icon, noPageYet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F8),
      body: SafeArea(
        minimum: EdgeInsets.only(top: 35.h),
        child: Column(
          children: [
            PagesAppBar(pageName: pageName),
            SizedBox(
              height: 140.h,
            ),
            SvgPicture.asset(
              height: 95.h,
              icon,
            ),
            SizedBox(
              height: 8.75.h,
            ),
            Text(
              noPageYet,
              style: Styles.textStyle26.copyWith(fontSize: 26),
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 70.w, vertical: 8.75.h),
              child: Text(
                textAlign: TextAlign.center,
                S.of(context).hitTheOrangeButton,
                style: Styles.textStyle17.copyWith(
                    fontWeight: FontWeight.normal, color: Colors.grey[600]),
              ),
            ),
            const Spacer(),
            CustomButton(
                title: S.of(context).startOrdering,
                onPressed: () {
                  Get.back();
                }),
            SizedBox(
              height: 35.h,
            ),
          ],
        ),
      ),
    );
  }
}
