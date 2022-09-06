import 'package:chopper/chopper.dart' as chopper;
import 'package:dio/dio.dart' as dio;
import 'package:error_handler/error_handler.dart';

/// Covert response to dart class or something else
typedef ResponseConverter<T, RT> = T Function(RT map);

/// [dio.Response] convertor
typedef DioConverter<T> = ResponseConverter<T, Map<String, dynamic>>;

extension HttpResponseDioExtension on dio.Response {
  HttpResponse<T, dynamic> to<T>(DioConverter<T> convert) {
    return HttpResponse<T, dynamic>(
      convert(data),
      ResponseValue(data, statusCode),
    );
  }
}

/// [chopper.Response] convertor
typedef ChopperResponse<T> = ResponseConverter<T, Map<String, dynamic>>;

extension HttpResponseChopperExtension on chopper.Response {
  HttpResponse<T, dynamic> to<T>(ChopperResponse<T> convert) {
    return HttpResponse<T, dynamic>(
      convert(body),
      ResponseValue(body, statusCode),
    );
  }
}
