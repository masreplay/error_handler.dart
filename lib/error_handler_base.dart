import 'package:error_handler/src/https_response.dart';
import 'package:error_handler/src/network_exception.dart';
import 'package:error_handler/src/result_state.dart';
import 'package:error_handler/src/result_state_extension.dart';

typedef LoggingCallback<T> = void Function(
  ResultState<T> resultState,
  Object? error,
  StackTrace? trace,
);

Stream<ResultState<T>> safeApiCall<T>(
  Future<HttpResponse<T>> Function() apiCall, {
  LoggingCallback<T>? logger,
}) async* {
  final loadingResult = ResultState<T>.loading();
  logger?.call(loadingResult, null, null);
  yield loadingResult;

  try {
    final value = await apiCall();

    final dataResult = ResultState<T>.data(
      data: value.data,
      statusCode: value.response.statusCode,
    );

    logger?.call(dataResult, null, null);

    yield dataResult;
  } catch (e, trace) {
    final networkException = NetworkException.getDioException(e);

    final errorResult = ResultState<T>.error(networkException);

    logger?.call(errorResult, e, trace);

    yield errorResult;
  }
}

Future<ResultState<T>> safeApiCallFuture<T>(
  Future<HttpResponse<T>> Function() apiCall, {
  LoggingCallback<T>? logger,
}) async {
  var state = ResultState<T>.idle();
  await safeApiCall(apiCall).listen((event) {
    if (event.isDataOrError) {
      state = event;
      return;
    }
  }).asFuture();
  return state;
}

/// Checks if you are awesome. Spoiler: you are.
class SafeService {}
