import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class RelatedBooksListViewItem extends StatelessWidget {
  const RelatedBooksListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomBookImage(
      radius: 10,
      width: 70,
      height: 110,
      image: bookModel.volumeInfo?.imageLinks?.thumbnail ?? kNotFoundImage,
    );
  }
}
