import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/price_and_rate_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/related_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        const RSizedBox(height: 24),
        const CustomBookImage(
          radius: 20,
          width: 160,
          height: 240,
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtO_l1P8VpL1R_1qrsfIAT5hZ_JnLlVUzMww&s',
        ),
        const RSizedBox(height: 40),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const RSizedBox(height: 6),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        const RSizedBox(height: 16),
        const BookRatingWidget(),
        const RSizedBox(height: 30),
        const PriceAndRateWidget(),
        const RSizedBox(height: 40),
        Row(
          children: [
            Padding(
              padding: REdgeInsets.only(left: 30),
              child: Text(
                'You can also like',
                style: Styles.textStyle14.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const RSizedBox(height: 16),
        const RelatedListView(),
      ],
    );
  }
}
