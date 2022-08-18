import 'package:dio/dio.dart';
import 'package:perfect_error_handler/perfect_error_handler.dart';

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
}

FutureResponse<Post> getPost() async {
  final dio = Dio();

  final response = await dio.get("https://jsonplaceholder.typicode.com/posts/1");

  final post = Post.fromJson(response.data);

  return HttpResponse(post, response);
}

void main() {
  safeApiCall(getPost).listen((event) {
    event.when(
      idle: () {
        print("init");
      },
      loading: () {
        print("loading...");
      },
      data: (post, statusCode) {
        print(post.title);
      },
      error: (error) {
        print(getErrorMessage(error));
      },
    );
  });
}
