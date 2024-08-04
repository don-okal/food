import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/features/home/presentation/widgets/custom_scroll_view.dart';
import 'package:food/generated/l10n.dart';
import 'package:food/utils/constant.dart';
import 'package:food/utils/styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FoodViewBody extends StatelessWidget {
  const FoodViewBody({
    super.key,
    required this.controller,
    required this.pages,
    required this.dish,
  });

  final PageController controller;
  final List<Stack> pages;
  final DishItem dish;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 210.h,
          child: PageView.builder(
            controller: controller,
            itemCount: pages.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return pages[index % pages.length];
            },
          ),
        ),
        SmoothPageIndicator(
          controller: controller,
          count: 6,
          effect: const WormEffect(
            dotColor: Color(0xffC4C4C4),
            activeDotColor: kPrimaryColor,
            dotHeight: 8,
            dotWidth: 8,
            type: WormType.thinUnderground,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Text(
          textAlign: TextAlign.center,
          dish.name,
          style: Styles.textStyle26.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          dish.price,
          style: Styles.textStyle22
              .copyWith(color: kPrimaryColor, fontSize: 20.sp),
        ),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(start: 40.w, end: 40.w),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).deliveryInformation,
                  style: Styles.textStyle15,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
                  style: Styles.textStyle12.copyWith(
                      color: Colors.black.withOpacity(0.38),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  S.of(context).returnPolicy,
                  style: Styles.textStyle15,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  S.of(context).allOurFoods,
                  style: Styles.textStyle12.copyWith(
                      color: Colors.black.withOpacity(0.38),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
