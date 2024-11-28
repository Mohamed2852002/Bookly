import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder:  (context) =>const BookDetailsView()));
      },
      child: Stack(
        children: [
          const CustomImage(
            width: 150,
            height: 225,
            image:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtO_l1P8VpL1R_1qrsfIAT5hZ_JnLlVUzMww&s',
            radius: 20,
          ),
          Positioned(
            bottom: 10.r,
            right: 10.r,
            child: Container(
              padding: REdgeInsets.all(12),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.5),
              ),
              child: const Icon(
                Icons.play_arrow_rounded,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
