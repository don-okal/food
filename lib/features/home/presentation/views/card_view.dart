import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/widgets/custom_button.dart';
import 'package:food/features/home/presentation/widgets/card_item.dart';
import 'package:food/features/home/presentation/widgets/pages_app_bar.dart';
import 'package:food/generated/l10n.dart';
import 'package:get/get.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    final QuantityController quantityController = Get.put(
      QuantityController(),
    );

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsetsDirectional.only(bottom: 20.h),
        child: CustomButton(
          title: S.of(context).completeOrder,
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        minimum: EdgeInsets.only(
          top: 35.h,
        ),
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: PagesAppBar(pageName: S.of(context).card),
              ),
            ];
          },
          body: Padding(
            padding: EdgeInsetsDirectional.only(
              top: 35.h,
            ),
            child: Obx(
              () {
                return ListView.builder(
                  itemCount: quantityController.items.length,
                  itemBuilder: (context, index) {
                    final item = quantityController.items[index];
                    return CardItem(
                      item: item,
                      onRemove: (index) => quantityController.removeItem(index),
                      index: index,
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class QuantityController extends GetxController {
  var items = <CardItemModel>[
    CardItemModel(
      name: 'Veggie tomato mix',
      image: 'assets/images/food.png',
      price: 1900,
      quantity: 1,
    ),
    CardItemModel(
      name: 'Fishwith mix orange',
      image: 'assets/images/food.png',
      price: 1900,
      quantity: 1,
    ),
  ].obs;

  void increment(int index) {
    items[index].quantity.value++;
  }

  void decrement(int index) {
    if (items[index].quantity.value > 1) {
      items[index].quantity.value--;
    }
  }

  void removeItem(int index) {
    items.removeAt(index);
  }
}
