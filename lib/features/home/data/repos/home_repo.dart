import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure,List<BookModel>>> fetchBooks();
  Future<Either<Failure,List<BookModel>>> fetchRelatedBooks({required String category});
}
