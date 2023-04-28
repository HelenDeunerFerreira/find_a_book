import 'package:dio/dio.dart';
import 'package:find_a_book/repository/model/data.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

class Apis {
  static const String books = '/books';
}

@RestApi(baseUrl: "https://books-flutter-g1.free.mockoapp.net")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(Apis.books)
  Future<ResponseData> getBooks();
}
