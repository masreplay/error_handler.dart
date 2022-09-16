import 'package:error_handler/error_handler.dart';

import 'test_client.dart';

class Post {
  final int id;
  final int userId;
  final String title;
  final String body;

  const Post({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json["id"] as int,
      userId: json["userId"] as int,
      title: json["title"] as String,
      body: json["body"] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "userId": userId,
      "title": title,
      "body": body,
    };
  }
}

/// get [Post] with success
FutureResponse<Post> getPost() async {
  final data = {
    "id": 1,
    "userId": 1,
    "title": "title",
    "decryption": "decryption"
  };
  dioAdapter.onGet(path, (server) => server.reply(200, data, delay: delay));
  final response = await dio.get(path);
  return response.convert(Post.fromJson);
}

/// get [Post] with 404 Http error
FutureResponse<Post> getPostError() async {
  const errorMessage = {"code": 404, "message": "post not found"};
  dioAdapter.onGet(
    path,
    (server) => server.reply(404, errorMessage, delay: delay),
  );
  final response = await dio.get(path);
  return response.convert(Post.fromJson);
}
