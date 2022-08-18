import 'package:dio/dio.dart';
import 'package:perfect_error_handler/perfect_error_handler.dart';
import 'package:perfect_error_handler/src/network_exception_localizations_utils.dart';

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

Future<HttpResponse<Post>> getPost() async {
  final dio = Dio();

  final response =
      await dio.get("https://jsonplaceholder.typicode.com/posts/1");

  final post = Post.fromJson(response.data);

  return HttpResponse(post, response);
}

void main() {
  final result = safeApiCall(() => getPost());

  result.listen((event) {
    event.when(
      idle: () {
        print("init");
      },
      loading: () {
        print("loading...");
      },
      data: (Post post, statusCode) {
        print(post.title);
      },
      error: (error) {
        // handle error
        final errorMessage = getDefaultErrorMessage(error);
        print(errorMessage);
      },
    );
  }).asFuture();
}
