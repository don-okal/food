import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/utils/constant.dart';
import 'package:food/generated/l10n.dart';
import 'package:get/get.dart';

class SearchView extends StatelessWidget {
  const SearchView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 35.h, start: 40.w, end: 40.w),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                ),
                Expanded(
                  child: TextField(
                    autofocus: true,
                    cursorColor: kPrimaryColor,
                    decoration: InputDecoration(
                      hintText: S.of(context).search,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      fillColor: backGroundColor,
                      filled: true,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                itemBuilder: (context, index) {
                  return null;
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.75,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
