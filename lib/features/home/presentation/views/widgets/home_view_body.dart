import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      // crossAxisAlignment: CrossAxisAlignment.start,
      slivers: [
        CustomAppBar(),
        SliverToBoxAdapter(child: RSizedBox(height: 45)),
        CustomBooksListView(),
        SliverToBoxAdapter(child: RSizedBox(height: 50)),
        CustomText(),
        SliverToBoxAdapter(child: RSizedBox(height: 20)),
        BestSellerListView(),
      ],
    );
  }
}
