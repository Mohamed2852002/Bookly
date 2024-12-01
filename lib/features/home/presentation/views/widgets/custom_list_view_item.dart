import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: bookModel);
      },
      child: Stack(
        children: [
          CustomBookImage(
            width: 150,
            height: 225,
            image:
                bookModel.volumeInfo?.imageLinks?.thumbnail ?? kNotFoundImage,
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
