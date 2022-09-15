import 'package:error_handler/error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_state_base.freezed.dart';

/// proxy typedef for [ResultState]
typedef UiState<T> = ResultState<T>;

/// proxy typedef for [ResultState]
typedef ApiResponse<T> = ResultState<T>;

/// state of the result it could [Data], [Error], [Idle], [Loading]
///
/// use other typedef like [UiState], [ApiResponse]
@Freezed()
class ResultState<T> with _$ResultState<T> {
  const factory ResultState.idle() = Idle<T>;

  const factory ResultState.loading() = Loading<T>;

  /// same as [HttpResponse] params
  const factory ResultState.data({
    required T data,
    required ResponseValue<dynamic> response,
  }) = Data<T>;

  const factory ResultState.error(NetworkException exception) = Error<T>;
}
