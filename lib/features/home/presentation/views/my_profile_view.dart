import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/utils/styles.dart';
import 'package:food/core/widgets/custom_button.dart';
import 'package:food/features/home/presentation/widgets/information_item.dart';
import 'package:food/features/home/presentation/widgets/pages_app_bar.dart';
import 'package:food/features/home/presentation/widgets/payment_method.dart';
import 'package:food/generated/l10n.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F8),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 35.h),
            child: PagesAppBar(pageName: S.of(context).profile),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(bottom: 10.h, start: 40.w),
            child: Text(
              S.of(context).information,
              style: Styles.textStyle17,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 40.w),
            child: const InformationItem(),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: 40.w, top: 35.h, bottom: 10.h),
            child: Text(
              S.of(context).paymentMethod,
              style: Styles.textStyle15,
            ),
          ),
          const PaymentMethod(),
          const Spacer(),
          CustomButton(
            title: S.of(context).update,
            onPressed: () {},
          ),
          SizedBox(
            height: 35.h,
          ),
        ],
      ),
    );
  }
}
