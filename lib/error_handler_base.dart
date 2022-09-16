// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:error_handler/error_handler.dart';
import 'package:error_handler/src/network_exception/filter/network_exception_filter.dart';
import 'package:error_handler/src/network_exception/network_exception_extension.dart';

// singleton instance of errorHandler
final errorHandler = ErrorHandler(logger: stateLogger);

// TODO(masreplay): docs
class ErrorHandler<T> {
  /// if null use [stateLogger]
  // TODO(masreplay): replace with list of loggers
  final LoggingCallback? logger;

  /// change error type [NetworkException] depend on conditions
  // TODO(masreplay): replace with list of filters
  final NetworkExceptionFilter filter;

  const ErrorHandler({
    this.logger,
    this.filter = const NetworkExceptionFilterDefault(),
  });

  /// return [apiCall] states when it gets changed
  /// first return the [firstState]
  StreamState<State> stream<State>(
    ApiCall<State> apiCall, {

    /// first value get yield it's [Loading] by default
    /// and it should be either [Loading] or [Idle]
    ResultState<State> /* Loading | Idle */ firstState = const Loading(),
  }) async* {
    assert(
      firstState is Loading || firstState is Idle,
      "ErrorHandler firstState should be either ResultState.loading() or ResultState.idle() of type Never ErrorHandler(firstState: ResultState.loading())",
    );

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
        filter: filter,
      );

      final errorResult = networkException.asError<State>();

      logger?.call(errorResult, e, trace);

      yield errorResult;
    }
  }

  FutureState<State> future<State>(
    FutureResponse<State> Function() apiCall,
  ) async {
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
        filter: filter,
      );

      final errorResult = networkException.asError<State>();

      logger?.call(errorResult, e, trace);

      return errorResult;
    }
  }

  ErrorHandler<T> copyWith({
    LoggingCallback? logger,
    NetworkExceptionFilter? filter,
  }) {
    return ErrorHandler<T>(
      logger: logger ?? this.logger,
      filter: filter ?? this.filter,
    );
  }
}
