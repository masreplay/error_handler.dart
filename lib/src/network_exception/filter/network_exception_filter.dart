import 'package:error_handler/error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


/// interceptor to change [NetworkException] type to [DefinedNetworkError]
/// 
/// 
/// 
/// ## Example: 
/// to check if user role isn't agent
/// 
/// ```dart
/// class UserTypeNEFilter extends NetworkExceptionFilter {
///   @override
///   NetworkException whenResponseException(ResponseValue response) {
///     if (response.data["role"] == "Agent") {
/// 
///       return RoleException().get();
///     }
/// 
///     return super.whenResponseException(response);
///   }
/// }
/// ```
/// 
/// See also:
/// 
// ignore: deprecated_member_use_from_same_package
typedef NetworkExceptionFilter = NetworkExceptionDelegate;

/// Replace [NetworkException] Default error type
// TODO(masreplay): add example here

@Deprecated("renamed to NetworkExceptionFilter")
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

/// Default implementations of [NetworkExceptionFilter]
@internal
class NetworkExceptionFilterDefault extends NetworkExceptionFilter {
  const NetworkExceptionFilterDefault();
}
