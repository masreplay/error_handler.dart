import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';

/// separate in another file
class User {
  final String name;
  final String role;

  User({
    required this.name,
    required this.role,
  });

  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      name: map['name'] as String,
      role: map['role'] as String,
    );
  }
}

/// separate in another file
FutureResponse<User> login(String username, String password) async {
  final response = await Dio().get("http://yourdomain.com/login");
  return response.convert(User.fromJson);
}

/// put any tag you want or you
/// you can also use the enum message provided from backend
///
/// # Example
///
/// ```dart
/// final unauthorizedException = DefinedException(tag: "UNAUTHORIZED_USER");
/// ```

/// separate in another file with the filter
final unauthorizedException = DefinedException(tag: "unauthorized");

/// provide [RoleException]
class RoleExceptionFilter extends NetworkExceptionFilter {
  @override
  NetworkException whenResponseException(ResponseValue response) {
    if (response.statusCode == 401) {
      return unauthorizedException.get();
    }

    return super.whenResponseException(response);
  }
}

/// you can also use flutter
Future<void> main() async {
  final handler = errorHandler.copyWith(filter: RoleExceptionFilter());

  final state = await handler.future(
    () => login("@masreplay", "password"),
  );

  state.whenDefinedException(unauthorizedException, ifEqual: (error) {
    print("user isn't authorized");
  });
}
