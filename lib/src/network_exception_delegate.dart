import 'package:error_handler/error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// enum DioErrorType {
//   /// It occurs when url is opened timeout.
//   connectTimeout,

//   /// It occurs when url is sent timeout.
//   sendTimeout,

//   ///It occurs when receiving timeout.
//   receiveTimeout,

//   /// When the server response, but with a incorrect status, such as 404, 503...
//   response,

//   /// When the request is cancelled, dio will throw a error with this type.
//   cancel,

//   /// Default error type, Some other Error. In this case, you can
//   /// use the DioError.error if it is not null.
//   other,
// }

typedef NetworkExceptionFilter = NetworkExceptionDelegate;

/// Replace [NetworkException] Default error type
abstract class NetworkExceptionDelegate {
  const NetworkExceptionDelegate();

  NetworkException whenConnectTimeout() {
    return const NetworkException.connectTimeout();
  }

  NetworkException whenSendTimeout() {
    return const NetworkException.sendTimeout();
  }

  NetworkException whenReceiveTimeout() {
    return const NetworkException.receiveTimeout();
  }

  NetworkException whenResponseException(ResponseValue response) {
    return NetworkException.responseException(response);
  }

  NetworkException whenRequestCancelled() {
    return const NetworkException.requestCancelled();
  }

  NetworkException whenOtherException() {
    return const NetworkException.otherException();
  }

  NetworkException whenNoInternetConnection() {
    return const NetworkException.noInternetConnection();
  }

  NetworkException whenUnableToProcessData() {
    return const NetworkException.unableToProcessData();
  }

  NetworkException whenUnexpectedError() {
    return const NetworkException.unexpectedError();
  }
}

typedef NetworkExceptionFilterDefault = NetworkExceptionDelegateDefault;

/// Default implementations of [NetworkExceptionDelegate]
@internal
class NetworkExceptionDelegateDefault extends NetworkExceptionDelegate {
  const NetworkExceptionDelegateDefault();
}
