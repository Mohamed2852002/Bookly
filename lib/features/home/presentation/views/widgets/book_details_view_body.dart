import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/price_and_rate_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/related_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          leading: Padding(
            padding: REdgeInsets.only(left: 33),
            child: IconButton(
              icon: const Icon(
                Icons.close,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_rounded,
              ),
            ),
            const RSizedBox(width: 30),
          ],
        ),
        const RSizedBox(height: 30),
        const CustomImage(
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
        const RSizedBox(height: 8),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18,
        ),
        const RSizedBox(height: 17),
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
        RSizedBox(
          height: 110,
          child: ListView.separated(
            padding: REdgeInsets.only(left: 30),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const RelatedListViewItem(),
            itemCount: 6,
            separatorBuilder: (context, index) => const RSizedBox(width: 10),
          ),
        ),
      ],
    );
  }
}
