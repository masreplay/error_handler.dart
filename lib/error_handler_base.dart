import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';
import 'package:error_handler/src/network_exception_delegate.dart';

/// Stream the [ResultState] class
typedef StreamState<T> = Stream<ResultState<T>>;

/// safe wrap to [Dio] api call return stream of
///
/// [apiCall] dio api call
/// [logger] print current state of [apiCall]
/// []
Stream<ResultState<T>> safeApiCall<T>(
  FutureResponse<T> Function() apiCall, {
  LoggingCallback<T>? logger,
  NetworkExceptionDelegate delegate = const NetworkExceptionDelegateDefault(),
  ResultState<T> firstState = const ResultState.loading(),
}) async* {
  logger?.call(firstState, null, null);
  yield firstState;

  try {
    final value = await apiCall();

    final dataResult = ResultState<T>.data(
      data: value.data,
      statusCode: value.response.statusCode,
    );

    logger?.call(dataResult, null, null);

    yield dataResult;
  } catch (e, trace) {
    final networkException = NetworkException.getDioException(
      e,
      delegate: delegate,
    );

    final errorResult = ResultState<T>.error(networkException);

    logger?.call(errorResult, e, trace);

    yield errorResult;
  }
}

Future<ResultState<T>> safeApiCallFuture<T>(
  Future<HttpResponse<T>> Function() apiCall, {
  LoggingCallback<T>? logger,
  NetworkExceptionDelegate delegate = const NetworkExceptionDelegateDefault(),
}) async {
  try {
    final value = await apiCall();

    final dataResult = ResultState<T>.data(
      data: value.data,
      statusCode: value.response.statusCode,
    );

    logger?.call(dataResult, null, null);

    return dataResult;
  } catch (e, trace) {
    final networkException =
        NetworkException.getDioException(e, delegate: delegate);

    final errorResult = ResultState<T>.error(networkException);

    logger?.call(errorResult, e, trace);

    return errorResult;
  }
}
