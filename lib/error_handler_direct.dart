import 'package:error_handler/error_handler.dart';
import 'package:error_handler/result_state_calls.dart';
import 'package:error_handler/src/network_exception_delegate.dart';

/// simple use of [ErrorHandler.stream]
StreamState<T> safeApiCall<T>(
  FutureResponse<T> Function() apiCall, {
  LoggingCallback<T>? logger,
  NetworkExceptionFilter filter = const NetworkExceptionFilterDefault(),
  ResultState<T> firstState = const ResultState.loading(),
}) async* {
  final errorHandler = ErrorHandler<T>(
    filter: filter,
    firstState: firstState as ResultState<Never>,
    logger: logger != null ? logger as LoggingCallback<dynamic> : stateLogger,
  );
  yield* errorHandler.stream(apiCall);
}

/// simple use of [ErrorHandler.future]
FutureState<T> safeApiCallFuture<T>(
  FutureResponse<T> Function() apiCall, {
  LoggingCallback<T>? logger,
  NetworkExceptionFilter filter = const NetworkExceptionFilterDefault(),
}) async {
  final errorHandler = ErrorHandler<T>(
    filter: filter,
    logger: logger != null ? logger as LoggingCallback<dynamic> : stateLogger,
  );
  return errorHandler.future(apiCall);
}
