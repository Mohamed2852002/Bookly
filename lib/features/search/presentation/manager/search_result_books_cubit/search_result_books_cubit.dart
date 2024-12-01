import 'package:bookly_app/features/search/presentation/manager/search_result_books_cubit/search_result_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultBooksCubit extends Cubit<SearchResultBooksState> {
  SearchResultBooksCubit() : super(SearchResultBooksInitial());
}
