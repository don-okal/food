import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/features/home/presentation/views/search_view.dart';
import 'package:food/generated/l10n.dart';
import 'package:get/get.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 40.w),
      child: SizedBox(
        height: 60.h,
        child: TextField(
          readOnly: true,
          onTap: () {
            Get.to(
              const SearchView(),
            );
          },
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            contentPadding: EdgeInsetsDirectional.symmetric(vertical: 15.h),
            filled: true,
            fillColor: const Color(0xffEFEEEE),
            hintText: S.of(context).search,
            hintStyle: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontWeight: FontWeight.bold,
            ),
            prefixIconConstraints: BoxConstraints(
                maxHeight: 30.h,
                minWidth: 15.h,
                maxWidth: 30.h,
                minHeight: 15.h),
            prefixIcon: Padding(
              padding: EdgeInsetsDirectional.only(end: 10.w),
              child: SvgPicture.asset(
                'assets/images/search.svg',
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black.withOpacity(0),
              ),
              borderRadius: BorderRadius.circular(32),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black.withOpacity(0),
              ),
              borderRadius: BorderRadius.circular(32),
            ),
          ),
        ),
      ),
    );
  }
}
