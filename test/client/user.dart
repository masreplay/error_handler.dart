// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:error_handler/error_handler.dart';

import 'test_client.dart';

enum Role {
  agent,
  customer;

  String toMap() => name;

  static Role fromMap(String name) {
    return values.firstWhere((element) => element.name == name);
  }
}

class User {
  final String name;
  final Role role;

  const User({
    required this.name,
    required this.role,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'role': role.toMap(),
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'] as String,
      role: Role.fromMap(json['role']),
    );
  }

  @override
  String toString() => 'User(name: $name, role: $role)';

  User copyWith({
    String? name,
    Role? role,
  }) {
    return User(
      name: name ?? this.name,
      role: role ?? this.role,
    );
  }
}

FutureResponse<User> login({
  required String username,
  required String password,
  required Role returnUserRole,
}) async {
  final user = User(name: "Mas", role: returnUserRole);
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
