// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:error_handler/error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

typedef DefinedCall = FutureOr<void> Function(DefinedNetworkError error);
typedef DefinedOrElse = FutureOr<void> Function();

/// used with [NetworkExceptionFilter] to define new error type
///
/// ```dart
/// class RoleException extends DefinedException {}
/// ```
/// - [tag] shouldn't be the same fir two type
class DefinedException implements Exception {
  @protected
  final String tag;

  const DefinedException({required this.tag});

  /// pointCut used to get [NetworkException] representation
  ///
  /// example
  /// ```dart
  /// class RoleException implements DefinedException {}
  ///
  /// ResultState.error()
  /// ```
  NetworkException get() {
    return NetworkException.definedException(this);
  }

  /// return [ResultState] of [DefinedException]
  ResultState<T> toResultState<T>() {
    return ResultState<T>.error(get());
  }

  @override
  bool operator ==(covariant DefinedException other) {
    if (identical(this, other)) return true;

    return other.tag == tag;
  }

  @override
  int get hashCode => tag.hashCode;
}
