import 'package:bookly_app/features/home/presentation/views/widgets/book_info_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookListItem extends StatelessWidget {
  const CustomBookListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomBookImage(
            width: 75,
            height: 110,
            radius: 10,
            image:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtO_l1P8VpL1R_1qrsfIAT5hZ_JnLlVUzMww&s',
          ),
          RSizedBox(width: 30),
          BookInfoWidget(),
        ],
      ),
    );
  }
}
