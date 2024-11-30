import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: REdgeInsets.only(
        left: 30,
        right: 45,
      ),
      sliver: SliverList.separated(
        separatorBuilder: (context, index) => const RSizedBox(height: 16),
        itemCount: 8,
        itemBuilder: (context, index) => const CustomBookListItem(),
      ),
    );
  }
}
