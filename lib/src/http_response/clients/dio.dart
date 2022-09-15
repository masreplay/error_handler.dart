import 'package:dio/dio.dart';
import 'package:error_handler/src/http_response/http_response_base.dart';
import 'package:error_handler/src/http_response/http_response_extension.dart';

extension HttpResponseDioExtension on Response {
  HttpResponse<T, dynamic> convert<T>(DioConverter<T> convert) {
    return HttpResponse<T, dynamic>(
      convert(data),
      ResponseValue<Response>(this, statusCode),
    );
  }
}
