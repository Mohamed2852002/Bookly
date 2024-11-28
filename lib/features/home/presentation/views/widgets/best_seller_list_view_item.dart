import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(
        left: 30,
        right: 45,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 75.w,
            height: 110.h,
            decoration: BoxDecoration(
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtO_l1P8VpL1R_1qrsfIAT5hZ_JnLlVUzMww&s',
                ),
              ),
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          const RSizedBox(width: 30),
         const BookInfoWidget(),
        ],
      ),
    );
  }
}
