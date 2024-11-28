import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBooksListView extends StatelessWidget {
  const CustomBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: RSizedBox(
        height: 225,
        child: ListView.separated(
          padding: REdgeInsets.only(left: 30),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomListViewItem(),
          separatorBuilder: (context, index) => const RSizedBox(width: 12),
          itemCount: 5,
        ),
      ),
    );
  }
}
