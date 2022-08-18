import 'package:dio/dio.dart';

typedef FutureResponse<T> = Future<HttpResponse<T>>;

class HttpResponse<T> {
  final T data;
  final Response<dynamic> response;
  HttpResponse(this.data, this.response);
}
