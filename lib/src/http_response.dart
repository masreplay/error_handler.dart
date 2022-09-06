/// future value of [HttpResponse]
typedef FutureResponse<T> = Future<HttpResponse<T, dynamic>>;

/// ResultState callback value
/// T: formatted [data] type
/// RT: [response] type
class HttpResponse<T, RT> {
  final T data;
  final ResponseValue<RT> response;
  HttpResponse(this.data, this.response);
}

/// Pure value of http response
class ResponseValue<RT> {
  final RT? data;
  final int? statusCode;
  ResponseValue(this.data, this.statusCode);
}
