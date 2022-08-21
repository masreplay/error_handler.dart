import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:error_handler/src/network_exception.dart';

part 'result_state.freezed.dart';

/// proxy typedef for [ResultState]
typedef UiState<T> = ResultState<T>;

/// proxy typedef for [ResultState]
typedef ApiResponse<T> = ResultState<T>;

/// State of result it could [Data], [Error], [Idle], [Loading]
///
/// use other typedef like [UiState], [ApiResponse]
@Freezed()
class ResultState<T> with _$ResultState<T> {
  const factory ResultState.idle() = Idle<T>;

  const factory ResultState.loading() = Loading<T>;

  const factory ResultState.data({required T data, int? statusCode}) = Data<T>;

  const factory ResultState.error(NetworkException error) = Error<T>;
}
