import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_info_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookListItem extends StatelessWidget {
  const CustomBookListItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomBookImage(
            width: 75,
            height: 110,
            radius: 10,
            image:
                bookModel.volumeInfo?.imageLinks?.thumbnail ?? kNotFoundImage,
          ),
          const RSizedBox(width: 30),
          BookInfoWidget(bookModel: bookModel),
        ],
      ),
    );
  }
}
