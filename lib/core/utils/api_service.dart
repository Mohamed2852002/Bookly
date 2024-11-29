import 'dart:developer';

import 'package:dio/dio.dart';

class ApiService {
  static const String baseUrl = 'https://www.googleapis.com/books/v1';

  static final Dio dio = Dio();

  static Future<Map<String, dynamic>> get(String endPoint) async {
    try {
      final Response response = await dio.get('$baseUrl$endPoint');
      return response.data;
    } on DioException catch (e) {
      log(e.message.toString());
      log(e.error.toString());
      throw Exception(e.message);
    }
  }
}
