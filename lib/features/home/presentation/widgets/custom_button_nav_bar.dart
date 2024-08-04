import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/features/home/presentation/history_view.dart';
import 'package:food/features/home/presentation/my_profile_view.dart';
import 'package:food/utils/constant.dart';
import 'package:get/get.dart';

class CustomButtonNavBar extends StatelessWidget {
  const CustomButtonNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: kPrimaryColor.withOpacity(0.1),
                blurRadius: 9.0,
              ),
            ],
          ),
          child: IconButton(
            color: kPrimaryColor,
            splashColor: kPrimaryColor.withOpacity(0.5),
            onPressed: () {},
            icon: Icon(
              Icons.home,
              size: 20.h,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/images/heart.svg',
            height: 18.h,
          ),
        ),
        IconButton(
          onPressed: () {
            Get.to(const MyProfileView());
          },
          icon: SvgPicture.asset(
            'assets/images/user.svg',
            height: 18.h,
          ),
        ),
        IconButton(
          onPressed: () {
            Get.to(
              const HistoryView(),
            );
          },
          icon: SvgPicture.asset(
            'assets/images/history.svg',
            height: 18.h,
          ),
        ),
      ],
    );
  }
}
