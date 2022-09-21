import 'package:dio/dio.dart';
import 'package:error_handler/src/http_response/http_response.dart';

extension HttpResponseDioExtension on Response {
  HttpResponse<T, dynamic> convert<T>(
    ResponseConverter<T, Map<String, dynamic>> convert,
  ) {
    return HttpResponse<T, dynamic>(
      convert(data),
      ResponseValue<Response>(this, statusCode),
    );
  }
}
