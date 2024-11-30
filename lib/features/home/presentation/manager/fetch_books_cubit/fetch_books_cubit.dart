import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manager/fetch_books_cubit/fetch_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FetchBooksCubit extends Cubit<FetchBooksState> {
  FetchBooksCubit() : super(FetchBooksInitial());
  fetchBooks() async {
    try {
      emit(FetchBooksLoading());
      List<BookModel> books = await HomeRepoImpl().fetchBooks();
      emit(FetchBooksSuccess(books: books));
    } catch (e) {
      emit(FetchBooksFailure(errorMessage: e.toString()));
    }
  }
}
