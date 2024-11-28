import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
      {super.key,
      required this.width,
      required this.height,
      required this.image, required this.radius,});
  final double width;
  final double height;
  final double radius;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            image,
          ),
        ),
        borderRadius: BorderRadius.circular(
          radius.r,
        ),
      ),
    );
  }
}
