import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/price_and_rate_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookImage(
          radius: 20,
          width: 160,
          height: 240,
          image: bookModel.volumeInfo?.imageLinks?.thumbnail ?? kNotFoundImage,
        ),
        const RSizedBox(height: 40),
        Text(
          bookModel.volumeInfo?.title ?? 'No Title Found',
          textAlign: TextAlign.center,
          style: Styles.textStyle30,
        ),
        const RSizedBox(height: 6),
        Text(
          bookModel.volumeInfo?.authors?[0] ?? 'No Author Found',
          textAlign: TextAlign.center,
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        const RSizedBox(height: 16),
        BookRatingWidget(bookModel: bookModel),
        const RSizedBox(height: 30),
        PriceAndRateWidget(bookModel: bookModel),
      ],
    );
  }
}
