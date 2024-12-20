import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookInfoWidget extends StatelessWidget {
  const BookInfoWidget({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RSizedBox(
            width: 195,
            child: Text(
              bookModel.volumeInfo?.title ?? 'No Title Found',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              style: Styles.textStyle20,
            ),
          ),
          const RSizedBox(height: 3),
          Text(
            bookModel.volumeInfo?.authors?[0] ?? 'No Author Found',
            style: Styles.textStyle14.copyWith(
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          const RSizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Free',
                style: Styles.textStyle15,
              ),
              BookRatingWidget(bookModel: bookModel),
            ],
          )
        ],
      ),
    );
  }
}
