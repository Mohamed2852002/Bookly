import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class RelatedListViewItem extends StatelessWidget {
  const RelatedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBookImage(
      radius: 10,
      width: 70,
      height: 110,
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtO_l1P8VpL1R_1qrsfIAT5hZ_JnLlVUzMww&s',
    );
  }
}
