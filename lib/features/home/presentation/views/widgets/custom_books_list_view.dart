import 'package:bookly_app/features/home/presentation/manager/fetch_books_cubit/fetch_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/fetch_books_cubit/fetch_books_state.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBooksListView extends StatelessWidget {
  const CustomBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<FetchBooksCubit>(context).fetchBooks();
    return BlocBuilder<FetchBooksCubit, FetchBooksState>(
      builder: (context, state) {
        if (state is FetchBooksSuccess) {
          return RSizedBox(
            height: 225,
            child: ListView.separated(
              padding: REdgeInsets.only(left: 30),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  CustomListViewItem(bookModel: state.books[index]),
              separatorBuilder: (context, index) => const RSizedBox(width: 12),
              itemCount: state.books.length,
            ),
          );
        }
        if (state is FetchBooksFailure) {
          return Text(state.errorMessage);
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
