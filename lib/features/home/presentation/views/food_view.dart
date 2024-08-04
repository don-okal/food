import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:food/features/home/presentation/widgets/custom_scroll_view.dart';
import 'package:food/features/home/presentation/widgets/favourite_icon.dart';
import 'package:food/features/home/presentation/widgets/food_view_body.dart';
import 'package:food/generated/l10n.dart';
import 'package:food/utils/constant.dart';
import 'package:food/widgets/custom_button.dart';
import 'package:get/get.dart';

class FoodView extends GetView<PageController> {
  FoodView(this.dish, {super.key});

  @override
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  final DishItem dish;

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
      6,
      (index) => Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 20,
                  offset: const Offset(0, 12),
                ),
              ],
            ),
            child: Hero(
              tag: 'image-$index',
              transitionOnUserGestures: true,
              child: CircleAvatar(
                radius: 92.h,
                child: ClipOval(
                  child: Image.asset(
                    dish.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsetsDirectional.only(bottom: 20.h),
        child: CustomButton(
          title: S.of(context).addToCart,
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        minimum: EdgeInsets.only(top: 35.h),
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                foregroundColor: backGroundColor,
                backgroundColor: backGroundColor,
                surfaceTintColor: backGroundColor,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: CustomAppBar(
                    icon1: Icon(
                      Icons.arrow_back_ios,
                      size: 15.h,
                    ),
                    onTab1: () {
                      Get.back();
                    },
                    icon2: const FavoriteIcon(),
                    onTab2: () {},
                  ),
                ),
                centerTitle: true,
                stretch: true,
                titleSpacing: 0,
                expandedHeight: 0.h,
                automaticallyImplyLeading: false,
              ),
            ];
          },
          body: FoodViewBody(controller: controller, pages: pages, dish: dish),
        ),
      ),
    );
  }
}
