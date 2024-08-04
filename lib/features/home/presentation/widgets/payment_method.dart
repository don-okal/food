import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/core/utils/constant.dart';
import 'package:food/features/home/presentation/widgets/payment_method_title.dart';
import 'package:food/generated/l10n.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  String currentOption = '';

  @override
  void initState() {
    super.initState();
    currentOption = S.current.card;
  }

  @override
  Widget build(BuildContext context) {
    List<String> paymentOptions = [
      S.of(context).card,
      S.of(context).bankAccount,
      'paypal',
    ];

    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 40.w),
      child: Container(
        height: 180.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 15.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildRadioListTile(
                paymentOptions[0],
                'assets/images/card.svg',
                const Color(0xffF47B0A),
              ),
              Divider(
                endIndent: 25.w,
                indent: 35.w,
              ),
              buildRadioListTile(
                paymentOptions[1],
                'assets/images/bankAccount.svg',
                const Color(0xffEB4796),
              ),
              Divider(
                endIndent: 25.w,
                indent: 35.w,
              ),
              buildRadioListTile(
                paymentOptions[2],
                'assets/images/paypal.svg',
                const Color(0xff0038FF),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRadioListTile(String title, String imagePath, Color color) {
    return ListTile(
      minLeadingWidth: 0,
      horizontalTitleGap: 17.w,
      minVerticalPadding: 0,
      minTileHeight: 0,
      contentPadding: EdgeInsets.zero,
      title: PaymentMethodTitle(
        item: imagePath,
        title: title,
        color: color,
      ),
      leading: Radio(
        fillColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return kPrimaryColor;
            }
            return Colors.grey;
          },
        ),
        visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        value: title,
        groupValue: currentOption,
        onChanged: (value) {
          setState(
            () {
              currentOption = value.toString();
            },
          );
        },
      ),
    );
  }
}
