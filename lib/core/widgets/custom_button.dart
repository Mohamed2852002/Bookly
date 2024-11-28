import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.r),
            bottomLeft: Radius.circular(15.r),
          ),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: Styles.textStyle15.copyWith(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
