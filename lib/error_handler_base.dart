import 'package:error_handler/error_handler.dart';
import 'package:error_handler/result_state_calls.dart';
import 'package:error_handler/src/network_exception_delegate.dart';

class ErrorHandler<T> {
  /// if null use [stateLogger]
  // TODO(masreplay): replace with list of loggers
  final LoggingCallback? logger;

  /// first value returned or yield by [ErrorHandler.stream] it's [Loading] by default
  /// should be either [Loading] or [Idle]
  final ResultState<Never> /* Loading | Idle */ firstState;

  /// change error type [NetworkException] depend on conditions
  // TODO(masreplay): replace with list of filters
  final NetworkExceptionFilter filter;

  const ErrorHandler({
    this.logger,
    this.firstState = const ResultState.loading(),
    this.filter = const NetworkExceptionFilterDefault(),
  }) : assert(
          firstState is Loading || firstState is Idle,
          "ErrorHandler firstState should be either ResultState.loading() or ResultState.idle() of type Never ErrorHandler(firstState: ResultState.loading())",
        );

  StreamState<State> stream<State>(ApiCall<State> apiCall) async* {
    logger?.call(firstState, null, null);
    yield firstState;

    try {
      final value = await apiCall();

      final dataResult = ResultState<State>.data(
        data: value.data,
        response: value.response,
      );

      logger?.call(dataResult, null, null);

      yield dataResult;
    } catch (e, trace) {
      final networkException = NetworkException.getNetworkException(
        e,
        delegate: filter,
      );

      final errorResult = ResultState<State>.error(networkException);

      logger?.call(errorResult, e, trace);

      yield errorResult;
    }
  }

  FutureState<State> future<State>(
    FutureResponse<State> Function() apiCall, {
    LoggingCallback<State>? logger,
    NetworkExceptionDelegate delegate = const NetworkExceptionDelegateDefault(),
  }) async {
    try {
      final value = await apiCall();

      final dataResult = ResultState<State>.data(
        data: value.data,
        response: value.response,
      );

      logger?.call(dataResult, null, null);

      return dataResult;
    } catch (e, trace) {
      final networkException = NetworkException.getNetworkException(
        e,
        delegate: delegate,
      );

      final errorResult = ResultState<State>.error(networkException);

      logger?.call(errorResult, e, trace);

      return errorResult;
    }
  }
}
