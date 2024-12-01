import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

class FetchRelatedBooksState {
  const FetchRelatedBooksState();
}

final class FetchRelatedBooksInitial extends FetchRelatedBooksState {}

final class FetchRelatedBooksSuccess extends FetchRelatedBooksState {
  final List<BookModel> books;

  FetchRelatedBooksSuccess({required this.books});
}

final class FetchRelatedBooksLoading extends FetchRelatedBooksState {}

final class FetchRelatedBooksFailure extends FetchRelatedBooksState {
  final String errorMessage;

  FetchRelatedBooksFailure({required this.errorMessage});
}
