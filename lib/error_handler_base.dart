import 'package:error_handler/error_handler.dart';
import 'package:error_handler/src/filters/network_exception_filter.dart';
import 'package:error_handler/src/network_exception/network_exception_extension.dart';

// singleton instance of errorHandler
final errorHandler = ErrorHandler(logger: stateLogger);

/// error handler for all type of clients in dart
///
/// used directly with any request method get, post, delete, ...
/// and with any return type it's type-safe
///
/// ## Example:
///
/// ```dart
/// FutureResponse<Post> getPost() async {
///   const path = "https://jsonplaceholder.typicode.com/posts/1";
///
///   final response = await Dio().get(path);
///   return response.convert(Post.fromJson);
/// }
///
/// Future<void> main() async {
///   final state = await ErrorHandler().future(getPost);
///
///   state.whenOrNull(
///     data: (post, response) {
///       print("title: ${post.title}");
///     },
///     error: (error) {
///       print(getErrorMessage(error));
///     },
///   );
/// }
/// ```
/// - [future] return state directly [Error] or [Data]
/// - [stream] return state when it get changed
///
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

  ResultState<State> _handleDataState<State>({
    required HttpResponse<State, dynamic> value,
    required DataFilters<State> filters,
  }) {
    final dataResult = ResultState<State>.data(
      data: value.data,
      response: value.response,
    );

    logger?.call(dataResult, null, null);

    for (var filter in filters) {
      final state = filter.handle(value.data, value.response);

      if (state == null) return dataResult;

      print("ResultState: old: $dataResult, new: $state");
      return state;
    }

    return dataResult;
  }

  ResultState<State> _handleError<State>(e, trace) {
    final networkException = NetworkException.getNetworkException(
      e,
      filter: filter,
    );

    final errorResult = networkException.asError<State>();

    logger?.call(errorResult, e, trace);

    return errorResult;
  }

  /// return state when it get changed
  ///
  /// start with [firstState] it's [Loading] by default
  /// then return either [Data] or [Error]
  ///
  ///
  /// - [apiCall] API call of any client with any Http method type
  /// - [firstState] first state get yield in the [Stream] it's [Loading] by default
  /// - [dataFilters] change [Data] type to [Error] or new [Data] type
  StreamState<State> stream<State>(
    ApiCall<State> apiCall, {
    ResultState<State> /* Loading | Idle */ firstState = const Loading(),
    DataFilters<State> dataFilters = const [],
  }) async* {
    assert(
      firstState is Loading || firstState is Idle,
      "ErrorHandler firstState should be either ResultState.loading() or ResultState.idle() of type Never ErrorHandler(firstState: ResultState.loading())",
    );

    logger?.call(firstState, null, null);
    yield firstState;

    try {
      final value = await apiCall();

      yield _handleDataState<State>(value: value, filters: dataFilters);
    } catch (e, trace) {
      yield _handleError(e, trace);
    }
  }

  /// return value directly [Error] or [Data]
  ///
  /// - [apiCall] API call of any client with any Http method type
  /// - [dataFilters] change [Data] type to [Error] or new [Data] type
  FutureOrState<State> future<State>(
    FutureResponse<State> Function() apiCall, {
    DataFilters<State> dataFilters = const [],
  }) async {
    try {
      final value = await apiCall();

      return _handleDataState<State>(value: value, filters: dataFilters);
    } catch (e, trace) {
      return _handleError(e, trace);
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
