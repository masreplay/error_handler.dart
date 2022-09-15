import 'dart:convert';

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

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

void main() {
  test('Post fromJson', () async {
    final postData = """{ "id": 1,
"userId": 1,
"title": "title",
"body": "body"
}""";

    final post = Post.fromJson(jsonDecode(postData));
    print(post);
    expect(post.title, "title");
  });
}
