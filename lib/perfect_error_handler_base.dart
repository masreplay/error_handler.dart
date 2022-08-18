import 'package:perfect_error_handler/src/https_response.dart';
import 'package:perfect_error_handler/src/network_exception.dart';
import 'package:perfect_error_handler/src/result_state.dart';

typedef LoggingCallback<T> = Function(
  ResultState<T> resultState, {
  Object? error,
  StackTrace? trace,
});

Stream<ResultState<T>> safeApiCall<T>(
  Future<HttpResponse<T>> Function() apiCall, {
  LoggingCallback? logger,
}) async* {
  final loadingResult = ResultState<T>.loading();
  logger?.call(loadingResult);
  yield loadingResult;

  try {
    final value = await apiCall();

    final dataResult = ResultState<T>.data(
      data: value.data,
      statusCode: value.response.statusCode,
    );

    logger?.call(dataResult);

    yield dataResult;
  } catch (e, trace) {
    final networkException = NetworkException.getDioException(e);

    final errorResult = ResultState<T>.error(networkException);

    logger?.call(errorResult, error: e, trace: trace);

    yield errorResult;
  }
}

/// Checks if you are awesome. Spoiler: you are.
class SafeService {}
