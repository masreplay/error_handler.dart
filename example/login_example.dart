import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';

/// update [User] class with your own fields
class User {
  final String name;
  final String role;

  User(this.name, this.role);

  factory User.fromJson(Map<String, dynamic> map) {
    return User(map['name'] as String, map['role'] as String);
  }
}

/// First create API call
FutureResponse<User> login(String gmail, String password) async {
  final body = {"gmail": gmail, "password": password};

  final response = await Dio().post("http://your.domain.com/login", data: body);

  return response.convert(User.fromJson);
}

/// Wrap it with [ErrorHandler.stream] or [ErrorHandler.future]
StreamState<User> safeLogin(String gmail, String password) =>
    errorHandler.stream(() => login(gmail, password));

void main() {
  final event = safeLogin("example@domain.com", "password");
  event.listen((event) {
    event.whenOrNull(
      loading: () {
        print("please wait");
      },
      data: (data, response) {
        print("login successfully");
        print(data);
      },
      error: (exception) {
        print(exception.defaultErrorMessage());
      },
    );
  });
}
