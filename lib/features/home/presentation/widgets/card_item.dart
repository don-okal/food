import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/core/utils/constant.dart';
import 'package:food/core/utils/styles.dart';
import 'package:get/get.dart';

class CardItemModel {
  final String name;
  final String image;
  final int price;
  RxInt quantity;

  CardItemModel({
    required this.name,
    required this.image,
    required this.price,
    required int quantity,
  }) : quantity = RxInt(quantity);
}

class CardItem extends StatelessWidget {
  final CardItemModel item;
  final Function(int index) onRemove;
  final int index;

  const CardItem({
    super.key,
    required this.item,
    required this.onRemove,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsetsDirectional.symmetric(horizontal: 40.w, vertical: 15.h),
      child: Slidable(
        key: Key(item.name),
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            Row(
              children: [
                SizedBox(width: 30.w),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 35.h,
                    width: 35.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images/heart.svg',
                        width: 15.h,
                        height: 15.h,
                        // ignore: deprecated_member_use
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15.w),
                GestureDetector(
                  onTap: () {
                    onRemove(index);
                  },
                  child: Container(
                    height: 35.h,
                    width: 35.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor,
                    ),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        child: Container(
          height: 120.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35.h,
                  backgroundImage: AssetImage(item.image),
                ),
                SizedBox(width: 20.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.name,
                        style: Styles.textStyle15,
                      ),
                      SizedBox(height: 7.h),
                      Text(
                        '#${item.price}',
                        style:
                            Styles.textStyle15.copyWith(color: kPrimaryColor),
                      ),
                      SizedBox(height: 7.h),
                      Padding(
                        padding: EdgeInsetsDirectional.only(start: 60.w),
                        child: Container(
                          height: 25.h,
                          width: 70.w,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Obx(
                            () {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () => item.quantity.value > 1
                                        ? item.quantity.value--
                                        : null,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.symmetric(
                                          horizontal: 4.w),
                                      child: Text(
                                        '-',
                                        style: Styles.textStyle15.copyWith(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 4.w),
                                  Text(
                                    '${item.quantity}',
                                    style: Styles.textStyle15.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 4.w),
                                  GestureDetector(
                                    onTap: () => item.quantity.value++,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.symmetric(
                                          horizontal: 4.w),
                                      child: Text(
                                        '+',
                                        style: Styles.textStyle15.copyWith(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
