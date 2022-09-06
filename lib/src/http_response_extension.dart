import 'package:dio/dio.dart' as dio;
import 'package:chopper/chopper.dart' as chopper;
import 'package:error_handler/error_handler.dart';

/// Covert response to dart class or something else
typedef ResponseConverter<T, RT> = T Function(RT map);

/// [dio.Response] convertor
typedef DioConverter<T> = ResponseConverter<T, Map<String, dynamic>>;

extension HttpResponseDioExtension<RT extends dynamic> on dio.Response {
  HttpResponse<T, RT> to<T>(DioConverter<T> convert) {
    return HttpResponse<T, RT>(
      convert(data),
      ResponseValue<RT>(data, statusCode),
    );
  }
}

/// [chopper.Response] convertor
typedef ChopperResponse<T> = ResponseConverter<T, Map<String, dynamic>>;

extension HttpResponseChopperExtension<RT extends dynamic> on chopper.Response {
  HttpResponse<T, RT> to<T>(ChopperResponse<T> convert) {
    return HttpResponse<T, RT>(
      convert(body),
      ResponseValue<RT>(body, statusCode),
    );
  }
}
