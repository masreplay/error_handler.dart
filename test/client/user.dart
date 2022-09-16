import 'package:error_handler/error_handler.dart';

import 'test_client.dart';

class User {
  final String name;
  final String role;
  User({
    required this.name,
    required this.role,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'role': role,
    };
  }

  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      name: map['name'] as String,
      role: map['role'] as String,
    );
  }
}

FutureResponse<User> login({
  required String username,
  required String password,
}) async {
  final user = User(name: "Mas", role: "AGENT");
  dioAdapter.onGet(
    path,
    (server) => server.reply(200, user.toJson(), delay: delay),
  );
  final response = await dio.get(path);
  return response.convert(User.fromJson);
}

FutureResponse<User> loginError({
  required String username,
  required String password,
}) async {
  dioAdapter.onGet(
    path,
    (server) => server.reply(400, {"error": "USER_TYPE_ERROR"}, delay: delay),
  );
  final response = await dio.get(path);
  return response.convert(User.fromJson);
}
