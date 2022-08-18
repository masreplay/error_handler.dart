import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:perfect_error_handler/src/network_exception.dart';

part 'result_state.freezed.dart';

// Ui status
@freezed
class ResultState<T> with _$ResultState<T> {
  const factory ResultState.idle() = Idle<T>;

  const factory ResultState.loading() = Loading<T>;

  const factory ResultState.data({required T data, int? statusCode}) = Data<T>;

  const factory ResultState.error(NetworkException error) = Error<T>;
}
