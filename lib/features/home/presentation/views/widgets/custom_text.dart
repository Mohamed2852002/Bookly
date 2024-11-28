import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(left: 30),
      child: Text(
        'Best Seller',
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
