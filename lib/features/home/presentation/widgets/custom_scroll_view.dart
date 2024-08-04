// ignore_for_file: deprecated_member_use

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:food/core/utils/constant.dart';
import 'package:food/core/widgets/food_item.dart';
import 'package:food/features/home/presentation/views/card_view.dart';
import 'package:food/features/home/presentation/views/drawer_view.dart';
import 'package:food/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:food/features/home/presentation/widgets/custom_button_nav_bar.dart';
import 'package:food/features/home/presentation/widgets/custom_refresger_footer.dart';
import 'package:food/features/home/presentation/widgets/custom_refresher_header.dart';
import 'package:food/features/home/presentation/widgets/custom_tab_bar.dart';
import 'package:food/features/home/presentation/widgets/custom_text.dart';
import 'package:food/features/home/presentation/widgets/search_text_field.dart';
import 'package:food/features/home/presentation/widgets/see_more_text.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

final ZoomDrawerController z = ZoomDrawerController();

class CustomCustomScrollView extends StatefulWidget {
  const CustomCustomScrollView({super.key});

  @override
  State<CustomCustomScrollView> createState() => _CustomCustomScrollViewState();
}

class _CustomCustomScrollViewState extends State<CustomCustomScrollView> {
  final RefreshController _refreshController = RefreshController();

  List<String> items = List<String>.generate(
    20,
    (index) => "Item $index",
  );

  Future<void> _onRefresh() async {
    await Future.delayed(
      const Duration(milliseconds: 1000),
    );

    setState(
      () {
        items = List<String>.generate(
          20,
          (index) => "New Item $index",
        );
      },
    );

    _refreshController.refreshCompleted();
  }

  Future<void> _onLoading() async {
    await Future.delayed(
      const Duration(
        milliseconds: 1000,
      ),
    );

    setState(() {
      items.addAll(
        List<String>.generate(
          20,
          (index) => "Loaded Item $index",
        ),
      );
    });

    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    bool isRtl = Localizations.localeOf(context).languageCode == 'ar';

    return ZoomDrawer(
      boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(0.3),
          spreadRadius: 0,
          blurRadius: 0,
          offset: Offset(
            Get.locale?.languageCode == 'en' ? -25.h : 25.h,
            25.h,
          ),
        ),
      ],
      menuBackgroundColor: kPrimaryColor,
      controller: z,
      menuScreen: const DrawerView(),
      mainScreen: _buildMainScreen(context),
      borderRadius: 32,
      showShadow: false,
      angle: 0,
      slideWidth: 225.w,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
      isRtl: isRtl,
    );
  }

  Widget _buildMainScreen(BuildContext context) {
    return SizedBox(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 40.w),
          color: backGroundColor,
          child: const CustomButtonNavBar(),
        ),
        backgroundColor: backGroundColor,
        body: Padding(
          padding: EdgeInsets.only(top: 15.h),
          child: SmartRefresher(
            controller: _refreshController,
            onRefresh: _onRefresh,
            onLoading: _onLoading,
            enablePullUp: true,
            header: const CustomRefreshHeader(),
            footer: const CustomLoadingFooter(),
            child: SafeArea(
              minimum: EdgeInsets.only(top: 35.h),
              child: DefaultTabController(
                length: 6,
                child: NestedScrollView(
                  physics: const BouncingScrollPhysics(),
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return <Widget>[
                      SliverAppBar(
                        toolbarHeight: 50.h,
                        flexibleSpace: FlexibleSpaceBar(
                          title: CustomAppBar(
                            icon1: Transform(
                              alignment: Alignment.center,
                              transform: Localizations.localeOf(context)
                                          .languageCode ==
                                      'ar'
                                  ? Matrix4.rotationY(3.14159)
                                  : Matrix4.identity(),
                              child: SvgPicture.asset(
                                'assets/images/menu.svg',
                                height: 13.h,
                                color: Colors.black,
                              ),
                            ),
                            onTab1: () {
                              z.toggle!();
                            },
                            icon2: SvgPicture.asset(
                              alignment: Alignment.centerRight,
                              'assets/images/shopping-cart.svg',
                              height: 18.h,
                              color: Colors.black,
                            ),
                            onTab2: () {
                              Get.to(const CardView());
                            },
                          ),
                        ),
                        centerTitle: true,
                        stretch: true,
                        titleSpacing: 0,
                        backgroundColor: backGroundColor,
                        foregroundColor: backGroundColor,
                        surfaceTintColor: backGroundColor,
                        expandedHeight: 35.h,
                        automaticallyImplyLeading: false,
                        pinned: true,
                      ),
                    ];
                  },
                  body: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      const DeliciousFoodForYou(),
                      const SearchTextField(),
                      const CustomTabBar(),
                      SizedBox(
                        height: 350.h,
                        child: TabBarView(
                          children: <Widget>[
                            customTabBarView(),
                            customTabBarView(),
                            customTabBarView(),
                            customTabBarView(),
                            customTabBarView(),
                            customTabBarView(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget customTabBarView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SeeMoreText(),
        CarouselSlider.builder(
          itemCount: dishItem.length,
          options: CarouselOptions(
            height: 285.h,
            autoPlayInterval: const Duration(seconds: 2),
            enlargeCenterPage: true,
            autoPlay: true,
            viewportFraction: 0.57,
          ),
          itemBuilder: (ctx, index, realIdx) {
            final dish = dishItem[index];
            return FoodItem(
              height: 220.h,
              width: 180.w,
              dish: dish,
              index: index,
            );
          },
        ),
      ],
    );
  }
}

@immutable
class DishItem {
  final String image;
  final String name;
  final String price;

  const DishItem(
      {required this.image, required this.name, required this.price});
}

const dishItem = [
  DishItem(
    image: 'assets/images/food.png',
    name: '''Veggie
tomato mix''',
    price: 'N1,900',
  ),
  DishItem(
    image: 'assets/images/food2.png',
    name: '''Spicy
fish sauce''',
    price: 'N1,100',
  ),
  DishItem(
    image: 'assets/images/food3.png',
    name: '''Egg
and cucmber...''',
    price: 'N1,900',
  ),
  DishItem(
    image: 'assets/images/food4.png',
    name: '''Fried
chicken m.''',
    price: 'N1,100',
  ),
  DishItem(
    image: 'assets/images/food5.png',
    name: '''Moi-moi
and ekpa.''',
    price: 'N1,100',
  ),
];
