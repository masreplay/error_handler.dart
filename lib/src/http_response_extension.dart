import 'package:chopper/chopper.dart' as chopper;
import 'package:dio/dio.dart' as dio;
import 'package:error_handler/error_handler.dart';

/// Covert response to dart class or something else
typedef ResponseConverter<R, RT> = R Function(RT map);

/// [dio.Response] convertor
typedef DioConverter<R> = ResponseConverter<R, Map<String, dynamic>>;

extension HttpResponseDioExtension on dio.Response {
  HttpResponse<T, dynamic> convert<T>(DioConverter<T> convert) {
    return HttpResponse<T, dynamic>(
      convert(data),
      ResponseValue<dio.Response>(this, statusCode),
    );
  }
}

/// [chopper.Response] convertor
typedef ChopperResponse<R> = ResponseConverter<R, Map<String, dynamic>>;

typedef ChopperHttpResponse<RT> = HttpResponse<RT, chopper.Response<RT>>;

typedef FutureChopperResponse<RT> = Future<chopper.Response<RT>>;

extension HttpResponseChopperExtension<RT> on chopper.Response<RT> {
  /// convert [chopper.Response] to [HttpResponse]
  ChopperHttpResponse convert<T>(ChopperResponse<T> convert) {
    return ChopperHttpResponse(
      convert(body as dynamic),
      ResponseValue(body as dynamic, statusCode),
    );
  }

  ChopperHttpResponse<RT> transform() {
    return ChopperHttpResponse<RT>(
      body as RT,
      ResponseValue(this, statusCode),
    );
  }
}

extension HttpResponseChopperExtensionFuture<RT> on FutureChopperResponse<RT> {
  Future<ChopperHttpResponse<RT>> transform() async => (await this).transform();
}
