import 'dart:io';

import 'package:dio/dio.dart';
import 'package:error_handler/src/network_exception_delegate.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exception.freezed.dart';

/// Unify all possible [Exception] came from [Dio] request
@Freezed(unionKey: "dioException", map: null, copyWith: true)
class NetworkException with _$NetworkException {
  const factory NetworkException.connectTimeout() = ConnectTimeout;

  const factory NetworkException.sendTimeout() = SendTimeout;

  const factory NetworkException.receiveTimeout() = ReceiveTimeout;

  const factory NetworkException.responseException(Response response) =
      ResponseException;

  const factory NetworkException.requestCancelled() = RequestCancelled;

  const factory NetworkException.otherException() = OtherException;

  const factory NetworkException.noInternetConnection() = NoInternetConnection;

  const factory NetworkException.unableToProcessData() = UnableToProcessData;

  const factory NetworkException.unexpectedError() = UnexpectedError;

  /// Provide [Freezed.when] exception (connect [Freezed] with errors)
  static NetworkException getDioException(
    Object error, {
    NetworkExceptionDelegate delegate = const NetworkExceptionDelegateDefault(),
  }) {
    if (error is Exception) {
      try {
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.connectTimeout:
              return delegate.whenConnectTimeout();
            case DioErrorType.sendTimeout:
              return delegate.whenSendTimeout();
            case DioErrorType.cancel:
              return delegate.whenReceiveTimeout();
            case DioErrorType.receiveTimeout:
              return delegate.whenReceiveTimeout();
            case DioErrorType.response:
              return delegate.whenResponseException(error.response!);
            case DioErrorType.other:
              return delegate.whenOtherException();
          }
        } else if (error is SocketException) {
          return const NetworkException.noInternetConnection();
        } else {
          return const NetworkException.unexpectedError();
        }
      } catch (_) {
        return const NetworkException.unexpectedError();
      }
      // [JsonSerializable] wrong data type error
    } else if (error.toString().contains("is not a subtype of")) {
      return const NetworkException.unableToProcessData();
    } else {
      return const NetworkException.unexpectedError();
    }
  }
}



// Typed error with type

// .typedError<User>(Object? value);

// const unverifiedUser = typedError<User>;