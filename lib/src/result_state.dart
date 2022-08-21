import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:error_handler/src/network_exception.dart';

part 'result_state.freezed.dart';

/// proxy typedef
typedef UiState<T> = ResultState<T>;

// Ui status
@Freezed()
class ResultState<T> with _$ResultState<T> {
  const factory ResultState.idle() = Idle<T>;

  const factory ResultState.loading() = Loading<T>;

  const factory ResultState.data({required T data, int? statusCode}) = Data<T>;

  const factory ResultState.error(NetworkException error) = Error<T>;
}
