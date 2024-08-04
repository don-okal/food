import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:food/features/home/presentation/home_view.dart';
import 'package:food/generated/l10n.dart';
import 'package:food/utils/constant.dart';
import 'package:food/utils/styles.dart';
import 'package:food/widgets/custom_button.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  final void Function(bool)? onFocusChange;
  const Login({
    super.key,
    this.onFocusChange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFormField(
              hint: 'Dosamarvis@gmail.com',
              isLast: false,
              title: S.of(context).emailAddress,
              obscure: false,
              onFocusChange: onFocusChange,
            ),
            CustomTextFormField(
              hint: '* * * * * * * * ',
              isLast: true,
              title: S.of(context).password,
              obscure: true,
              onFocusChange: onFocusChange,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 40.w, top: 35.h),
              child: Text(
                S.of(context).forgetPassword,
                style: Styles.textStyle15.copyWith(color: kPrimaryColor),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 90.h,
        ),
        CustomButton(
          title: S.of(context).logIn,
          onPressed: () {
            Get.to(const HomeView());
          },
        ),
      ],
    );
  }
}
