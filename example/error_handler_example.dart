import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';

import 'post.dart';

/// first create [Dio] api call
FutureResponse<Post> getPost() async {
  final response = await Dio().get(
    "https://jsonplaceholder.typicode.com/posts/1",
  );

  return response.convert(Post.fromJson);
}

/// wrap the api call with [safeApiCall]
void main() {
  final errorHandler = ErrorHandler();

  errorHandler.stream(getPost).listen((event) {
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
