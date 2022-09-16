import 'dart:convert';

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'client/post.dart';

void main() {
  const postData = """{ "id": 1,
"userId": 1,
"title": "title",
"body": "body"
}""";
  test('Post fromJson', () async {
    final post = Post.fromJson(jsonDecode(postData));

    expect(post.title, "title");
  });
}
