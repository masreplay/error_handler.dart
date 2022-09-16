import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';
import 'package:error_handler/src/network_exception/defined_exception.dart';

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

FutureResponse<User> login(String username, String password) async {
  final response = await Dio().get("http://theKeySoftware.com/login");
  return response.convert(User.fromJson);
}

/// user don't have the action to perform such action
class RoleException extends DefinedException {}

/// provide [RoleException]
class RoleExceptionFilter extends NetworkExceptionFilter {
  @override
  NetworkException whenResponseException(ResponseValue response) {
    if (response.statusCode == 400 &&
        response.data["error"] == "USER_TYPE_ERROR") {
      return RoleException().get();
    }

    return super.whenResponseException(response);
  }
}

Future<void> main() async {
  final handler = errorHandler.copyWith(filter: RoleExceptionFilter());

  final state = await handler.future(
    () => login("@masreplay", "password"),
  );

  state.whenDefinedException(RoleException(), ifEqual: (error) {
    print("user don't have the action to perform such action");
  });
}
