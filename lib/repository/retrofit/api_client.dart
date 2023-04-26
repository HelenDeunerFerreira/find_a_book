import 'package:dio/dio.dart';
import 'package:find_a_book/repository/model/data.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

class Apis {
  static const String books = '/Livros/1';
}

@RestApi(baseUrl: "https://643dde29c72fda4a0be927b5.mockapi.io/api/v1")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(Apis.books)
  Future<ResponseData> getBooks();
}
