import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/utils/constant.dart';
import 'package:food/core/utils/styles.dart';
import 'package:food/features/home/presentation/views/food_view.dart';
import 'package:food/features/home/presentation/widgets/custom_scroll_view.dart';
import 'package:get/get.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({
    super.key,
    required this.height,
    required this.width,
    required this.dish,
    required this.index,
  });
  final double height, width;
  final DishItem dish;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => FoodView(dish));
      },
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(top: 35.h),
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(
                      0,
                      3,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Hero(
                  tag: 'image-$index',
                  transitionOnUserGestures: true,
                  child: CircleAvatar(
                    radius: 55.h,
                    backgroundImage: AssetImage(
                      dish.image,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(
                      vertical: 20.h, horizontal: 40.w),
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    dish.name,
                    style: Styles.textStyle15,
                  ),
                ),
                Text(
                  textAlign: TextAlign.center,
                  dish.price,
                  style: Styles.textStyle15.copyWith(color: kPrimaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
