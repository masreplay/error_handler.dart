import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';

import 'post.dart';

/// first create [Dio] api call
FutureResponse<Post> getPost() async {
  final dio = Dio();

  final response =
      await dio.get<String>("https://jsonplaceholder.typicode.com/posts/1");

  return response.to(Post.fromJson);
}

/// wrap the api call with [safeApiCall]
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
        print("title: ${post.title}");
      },
      error: (error) {
        print(getErrorMessage(error));
      },
    );
  });
}
