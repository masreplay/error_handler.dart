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

typedef ObjectError = Object?;

/// Replace [NetworkException] Default error type
// TODO(masreplay): add example here
@Deprecated("renamed to NetworkExceptionFilter")
abstract class NetworkExceptionDelegate {
  const NetworkExceptionDelegate();

  NetworkException whenConnectTimeout([ObjectError error]) {
    return const NetworkException.connectTimeout();
  }

  NetworkException whenSendTimeout([ObjectError error]) {
    return const NetworkException.sendTimeout();
  }

  NetworkException whenReceiveTimeout([ObjectError error]) {
    return const NetworkException.receiveTimeout();
  }

  NetworkException whenResponseException(ResponseValue response) {
    return NetworkException.responseException(response);
  }

  NetworkException whenRequestCancelled([ObjectError error]) {
    return const NetworkException.requestCancelled();
  }

  NetworkException whenOtherException([ObjectError error]) {
    return NetworkException.otherException(error);
  }

  NetworkException whenNoInternetConnection([ObjectError error]) {
    return const NetworkException.noInternetConnection();
  }

  NetworkException whenUnableToProcessData([ObjectError error]) {
    return const NetworkException.unableToProcessData();
  }

  NetworkException whenUnexpectedError([ObjectError error]) {
    return const NetworkException.unexpectedError();
  }
}

/// Default implementations of [NetworkExceptionFilter]
@internal
class NetworkExceptionFilterDefault extends NetworkExceptionFilter {
  const NetworkExceptionFilterDefault();
}
