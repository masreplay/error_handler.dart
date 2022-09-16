import 'package:error_handler/error_handler.dart';

/// convert [Data] to [Error] or other type of [Data]
///
///
///
/// ## Example:
///
/// Agent-type user not allowed to login in the mobile app
///
/// ```dart
/// class RoleException extends DefinedException {}
///
/// class RoleDataFilter extends DataFilter<User> {
///   @override
///   ResultState<User>? handle(User data, ResponseValue<dynamic> response) {
///     if (data.role == "AGENT") {
///       return RoleException().getResultState();
///     }
///     return null;
///   }
/// }
/// ```
///
/// See also:
///
/// - [NetworkExceptionFilter] change error type and provide new errors type

abstract class DataFilter<T> {
  /// return null if you don't want [Data] to be changed
  ResultState<T>? handle(T data, ResponseValue<dynamic> response);
}
