import 'package:chopper/chopper.dart';
import 'package:error_handler/error_handler.dart';

/// [Response] convertor
typedef ChopperResponse<R> = ResponseConverter<R, Map<String, dynamic>>;

typedef ChopperHttpResponse<RT> = HttpResponse<RT, Response<RT>>;

typedef FutureChopperResponse<RT> = Future<Response<RT>>;

extension HttpResponseChopperExtension<RT> on Response<RT> {
  /// convert chopper [Response] to [HttpResponse]
  ///
  /// - [convert] change data type to [T]
  ///
  /// ```dart
  /// final response = Response();
  ///
  /// response.convert((map) => User.fromJson(map));
  /// ```
  ChopperHttpResponse convert<T>(ChopperResponse<T> convert) {
    return ChopperHttpResponse(
      convert(body as dynamic),
      ResponseValue(body as dynamic, statusCode),
    );
  }

  /// wrap [Response] without convertor and return [HttpResponse]
  ChopperHttpResponse<RT> transform() {
    return ChopperHttpResponse<RT>(
      body as RT,
      ResponseValue(this, statusCode),
    );
  }
}

extension HttpResponseChopperExtensionFuture<RT> on FutureChopperResponse<RT> {
  /// wrap [Future] of type [Response] without convertor and return [HttpResponse]
  Future<ChopperHttpResponse<RT>> transform() async => (await this).transform();
}
