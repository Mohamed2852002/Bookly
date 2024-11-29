import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchResultBooksListView extends StatelessWidget {
  const SearchResultBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: REdgeInsets.only(top: 12),
        separatorBuilder: (context, index) => const RSizedBox(height: 16),
        itemCount: 8,
        itemBuilder: (context, index) => const CustomBookListItem(),
      ),
    );
  }
}
