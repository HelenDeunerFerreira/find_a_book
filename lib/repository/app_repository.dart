import 'package:dio/dio.dart';
import 'package:find_a_book/repository/retrofit/api_client.dart';

class AppRepository {
  ApiClient? _apiRequest;
  Dio? dio;

  AppRepository() {
    dio = Dio();
    _apiRequest = ApiClient(dio!);
  }
}
