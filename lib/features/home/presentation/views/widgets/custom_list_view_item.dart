import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 150.w,
          height: 225.h,
          decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtO_l1P8VpL1R_1qrsfIAT5hZ_JnLlVUzMww&s',
              ),
            ),
            borderRadius: BorderRadius.circular(
              20.r,
            ),
          ),
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
    );
  }
}
