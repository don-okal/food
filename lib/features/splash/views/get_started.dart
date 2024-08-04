import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/utils/constant.dart';
import 'package:food/core/widgets/custom_button.dart';
import 'package:food/features/auth/presentation/views/auth.dart';
import 'package:food/features/auth/presentation/widgets/food_for_every_one.dart';
import 'package:food/generated/l10n.dart';
import 'package:get/get.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/screen.png',
                ),
                fit: BoxFit.fill),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FoodForEveryOne(),
              const Spacer(),
              CustomButton(
                title: S.of(context).getStarted,
                onPressed: () {
                  Get.to(const Auth());
                },
                color: Colors.white,
                textColor: kPrimaryColor,
              ),
              SizedBox(
                height: 35.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
