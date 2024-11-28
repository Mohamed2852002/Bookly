import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookRatingWidget extends StatelessWidget {
  const BookRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        Text('4.8', style: Styles.textStyle16),
        const RSizedBox(width: 6),
        Text('(2940)', style: Styles.textStyle14),
      ],
    );
  }
}
