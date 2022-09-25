import 'package:chopper/chopper.dart';
import 'package:error_handler/error_handler.dart';

/// [Response] convertor
/// https://github.com/dart-lang/dartdoc/issues/3132
// typedef ChopperResponse<R> = ResponseConverter<R, Map<String, dynamic>>;

typedef ChopperHttpResponse<T> = HttpResponse<T, Response<T>>;

typedef FutureChopperResponse<RT> = Future<Response<RT>>;

extension HttpResponseChopperExtension<T> on Response<T> {
  /// convert chopper [Response] to [HttpResponse]
  ///
  /// - [convert] change data type to [T]
  ///
  /// ```dart
  /// final response = Response();
  ///
  /// response.convert((map) => User.fromJson(map));
  /// ```
  ChopperHttpResponse convert(
      ResponseConverter<T, Map<String, dynamic>> convert) {
    return ChopperHttpResponse(
      convert(this.body as dynamic),
      ResponseValue(this.body as dynamic, statusCode),
    );
  }

  /// wrap [Response] without convertor and return [HttpResponse]
  ChopperHttpResponse<T> transform() {
    return ChopperHttpResponse<T>(
      this.body as T,
      ResponseValue(this, statusCode),
    );
  }
}

extension HttpResponseChopperExtensionFuture<T> on Future<Response<T>> {
  /// wrap [Future] of type [Response] without convertor and return [HttpResponse]
  Future<ChopperHttpResponse<T>> transform() async {
    final value = await this;

    return value.transform();
  }
}
