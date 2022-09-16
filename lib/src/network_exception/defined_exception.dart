import 'dart:async';

import 'package:error_handler/error_handler.dart';

typedef DefinedCall = FutureOr<void> Function(DefinedNetworkError exception);
typedef DefinedOrElse = FutureOr<void> Function();

/// used with [NetworkExceptionFilter] to define new error type
///
/// ```dart
/// class RoleException extends DefinedException {}
/// ```
class DefinedException implements Exception {
  const DefinedException();

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
}
