import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookInfoWidget extends StatelessWidget {
  const BookInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RSizedBox(
            width: 195,
            child: Text(
              'Harry Potter and the Goblet of Fire',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              style: Styles.textStyle20,
            ),
          ),
          const RSizedBox(height: 3),
          Text(
            'J.K. Rowling',
            style: Styles.textStyle14.copyWith(
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          const RSizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '10.99\$',
                style: Styles.textStyle15,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xffFFDD4F),
                  ),
                  Text('4.8', style: Styles.textStyle16),
                  const RSizedBox(width: 6),
                  Text('(2940)', style: Styles.textStyle14),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
