import 'package:error_handler/error_handler.dart';

import 'test_client.dart';
import 'post.dart';

class User {
  final String name;

  const User(this.name);

  factory User.fromJson(Map<String, dynamic> json) => User(json["name"]);
}

FutureResponse<Post> login({
  required String username,
  required String password,
}) async {
  dioAdapter.onGet(
    path,
    (server) => server.reply(400, {"error": "USER_TYPE_ERROR"}, delay: delay),
  );
  final response = await dio.get(path);
  return response.convert(Post.fromJson);
}

enum NetworkErrors {
  userTypeError("USER_TYPE_ERROR");

  const NetworkErrors(this.message);

  final String message;
}
