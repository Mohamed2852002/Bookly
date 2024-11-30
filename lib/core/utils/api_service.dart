import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ApiService {
  static const String _baseUrl = 'https://www.googleapis.com/books/v1/';

  static final Dio _dio = Dio();

  static Future<Either<Failure, Map<String, dynamic>>> get(
      String endPoint) async {
    try {
      final Response response = await _dio.get('$_baseUrl$endPoint');
      return right(response.data);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
