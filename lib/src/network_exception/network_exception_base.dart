import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';
import 'package:error_handler/src/filters/network_exception_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exception_base.freezed.dart';

/// used to union all possible [Exception] came from [Dio] request
///
/// [Freezed] based class
@Freezed(unionKey: "dioException", map: null, copyWith: true, equal: true)
class NetworkException with _$NetworkException {
  const NetworkException._();

  const factory NetworkException.connectTimeout() = ConnectTimeout;

  const factory NetworkException.sendTimeout() = SendTimeout;

  const factory NetworkException.receiveTimeout() = ReceiveTimeout;

  const factory NetworkException.responseException(ResponseValue response) =
      ResponseException;

  const factory NetworkException.requestCancelled() = RequestCancelled;

  const factory NetworkException.otherException([ObjectError error]) =
      OtherException;

  const factory NetworkException.noInternetConnection() = NoInternetConnection;

  const factory NetworkException.unableToProcessData() = UnableToProcessData;

  const factory NetworkException.unexpectedError() = UnexpectedError;

  factory NetworkException.definedException(DefinedException exception) =
      DefinedNetworkError;

  /// Provide [Freezed.when] exception (connect [Freezed] with errors)
  @internal
  static NetworkException getNetworkException(
    Object error, {
    NetworkExceptionFilter filter = const NetworkExceptionFilterDefault(),
  }) {
    if (error is Exception) {
      try {
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.connectTimeout:
              return filter.whenConnectTimeout();
            case DioErrorType.sendTimeout:
              return filter.whenSendTimeout();
            case DioErrorType.cancel:
              return filter.whenReceiveTimeout();
            case DioErrorType.receiveTimeout:
              return filter.whenReceiveTimeout();
            case DioErrorType.response:
              final response = error.response!;
              return filter.whenResponseException(
                ResponseValue(response.data, response.statusCode),
              );
            case DioErrorType.other:
              return filter.whenOtherException(error);
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

  /// check if [NetworkException] equal to [DefinedException]
  @internal
  bool equal(DefinedException exception) {
    return this == DefinedNetworkError(exception);
  }

  /// check if [NetworkException] equal to [DefinedException] and then execute [ifEqual]
  Future<void> equalDo(
    DefinedException exception, {
    required DefinedCall ifEqual,
    DefinedOrElse? orElse,
  }) async {
    final value = DefinedNetworkError(exception);

    this == value ? await ifEqual(value) : await orElse?.call();
  }
}
