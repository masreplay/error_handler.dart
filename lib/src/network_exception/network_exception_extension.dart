import 'package:error_handler/error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

extension NetworkExceptionExtension on NetworkException {
  /// return [NetworkException] as [ResultState] of type [Error]
  @internal
  ResultState<T> asError<T>() => ResultState<T>.error(this);
}
