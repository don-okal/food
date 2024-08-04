import 'package:flutter/material.dart';
import 'package:food/utils/assets.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    required this.radius,
    required this.hight,
  });
  final double radius, hight;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: radius,
      child: Image.asset(
        AssetsData.logo,
        height: hight,
      ),
    );
  }
}
