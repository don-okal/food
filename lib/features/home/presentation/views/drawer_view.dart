import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/core/utils/styles.dart';
import 'package:food/features/home/presentation/views/orders_view.dart';
import 'package:food/generated/l10n.dart';
import 'package:get/get.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 110.h, start: 35.w),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.language,
                color: Colors.white,
              ),
              TextButton(
                onPressed: () {
                  Get.updateLocale(Get.locale?.languageCode == 'en'
                      ? const Locale('ar', 'EG')
                      : const Locale('en', 'US'));
                },
                child: Text(
                  Get.locale?.languageCode == 'en' ? 'العربية' : 'English',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.white.withOpacity(0.4),
            indent: 30.w,
            endIndent: 30.w,
          ),
          DrawerItem(
            title: S.of(context).profile,
            icon: 'assets/images/profile.svg',
          ),
          Divider(
            color: Colors.white.withOpacity(0.4),
            indent: 30.w,
            endIndent: 30.w,
          ),
          DrawerItem(
            title: S.of(context).orders,
            icon: 'assets/images/orders.svg',
            onTap: () {
              Get.to(() => const OrdersView());
            },
          ),
          Divider(
            color: Colors.white.withOpacity(0.4),
            indent: 30.w,
            endIndent: 30.w,
          ),
          DrawerItem(
            title: S.of(context).offerAndPromo,
            icon: 'assets/images/offer.svg',
          ),
          Divider(
            color: Colors.white.withOpacity(0.4),
            indent: 30.w,
            endIndent: 30.w,
          ),
          DrawerItem(
            title: S.of(context).privacyPolicy,
            icon: 'assets/images/privacy.svg',
          ),
          Divider(
            color: Colors.white.withOpacity(0.4),
            indent: 30.w,
            endIndent: 30.w,
          ),
          DrawerItem(
            title: S.of(context).security,
            icon: 'assets/images/security.svg',
          ),
          SizedBox(
            height: 120.h,
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  S.of(context).signOut,
                  style: Styles.textStyle15.copyWith(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Icon(
                  Localizations.localeOf(context).languageCode == 'ar'
                      ? Icons.west
                      : Icons.east,
                  color: Colors.white,
                  size: 22.h,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    this.onTap,
    required this.title,
    required this.icon,
  });
  final void Function()? onTap;
  final String title, icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsetsDirectional.symmetric(vertical: 15.h),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              title,
              style: Styles.textStyle12.copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
