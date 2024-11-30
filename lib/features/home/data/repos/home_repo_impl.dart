import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<List<BookModel>> fetchNewestBooks() async {
    var data =
        await ApiService.get('volumes?Filtering=free-ebooks&Sorting=newest');
    List<BookModel> books = [];
    data.fold(
      (l) {},
      (r) {
        for (var item in r["items"]) {
          books.add(BookModel.fromJson(item));
        }
      },
    );
    return books;
  }

  @override
  Future<List<BookModel>> fetchBooks() {
    throw UnimplementedError();
  }
}
