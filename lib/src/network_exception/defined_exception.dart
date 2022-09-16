// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:error_handler/error_handler.dart';

typedef DefinedCall = FutureOr<void> Function(DefinedNetworkError error);
typedef DefinedOrElse = FutureOr<void> Function();

/// used with [NetworkExceptionFilter] to define new error type
///
/// ```dart
/// class RoleException extends DefinedException {}
/// ```
class DefinedException implements Exception {
  final String? errorMessage;

  const DefinedException([this.errorMessage]);

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

  @override
  String toString() => 'DefinedException(errorMessage: $errorMessage)';

  @override
  bool operator ==(covariant DefinedException other) {
    if (identical(this, other)) return true;

    return other.errorMessage == errorMessage;
  }

  @override
  int get hashCode => errorMessage.hashCode;
}
