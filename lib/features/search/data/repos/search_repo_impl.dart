import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  @override
  Future<Either<Failure, List<BookModel>>> getSearcheBooks(
      {required String bookName}) async {
    try {
      var data =
          await ApiService.get('volumes?q=$bookName&Filtering=free-ebooks');
      List<BookModel> books = [];
      if (data['totalItems'] != 0) {
        for (var item in data["items"]) {
          books.add(BookModel.fromJson(item));
        }
        return right(books);
      }
      return left(ServerFailure(errorMessage: 'No Books Found'));
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }
}
