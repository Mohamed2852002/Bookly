import 'package:bookly_app/features/home/presentation/views/widgets/related_books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RelatedBooksListView extends StatelessWidget {
  const RelatedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return RSizedBox(
      height: 110,
      child: ListView.separated(
        padding: REdgeInsets.only(left: 30),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const RelatedBooksListViewItem(),
        itemCount: 6,
        separatorBuilder: (context, index) => const RSizedBox(width: 10),
      ),
    );
  }
}
