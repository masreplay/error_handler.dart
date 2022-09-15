import 'package:error_handler/error_handler.dart';

/// future value of [HttpResponse]
typedef FutureResponse<T> = Future<HttpResponse<T, dynamic>>;

/// response wrapper
///
/// [response] will be passed to [ErrorHandler]
///
/// - [data] formatted data type of [T]
/// - [response] response value to used it [ResultState.error] of type [RT]
class HttpResponse<T, RT> {
  final T data;

  final ResponseValue<RT> response;
  HttpResponse(this.data, this.response);
}

/// real response data
///
/// - [data] any type
/// - [statusCode] Response status code
class ResponseValue<RT> {
  final RT? data;
  final int? statusCode;
  ResponseValue(this.data, this.statusCode);
}
