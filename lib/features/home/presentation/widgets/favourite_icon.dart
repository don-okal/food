import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({super.key});

  @override
  FavoriteIconState createState() => FavoriteIconState();
}

class FavoriteIconState extends State<FavoriteIcon> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        alignment: Alignment.centerRight,
        'assets/images/heart.svg',
        height: 18.h,
        // ignore: deprecated_member_use
        color: isFavorite ? Colors.red : Colors.grey,
      ),
      onPressed: toggleFavorite,
    );
  }
}
