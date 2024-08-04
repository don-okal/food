import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/widgets/custom_button.dart';
import 'package:food/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:food/features/home/presentation/views/home_view.dart';
import 'package:food/generated/l10n.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  final void Function(bool)? onFocusChange;
  const SignUp({
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
          ],
        ),
        SizedBox(
          height: 145.h,
        ),
        CustomButton(
          title: S.of(context).signUp,
          onPressed: () {
            Get.to(const HomeView());
          },
        ),
      ],
    );
  }
}
