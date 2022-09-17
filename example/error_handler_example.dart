import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';
import 'post.dart';

/// first create [Dio] api call
FutureResponse<Post> getPost() async {
  const path = "https://jsonplaceholder.typicode.com/posts/1";

  final response = await Dio().get(path);
  return response.convert(Post.fromJson);
}

/// wrap the api call with [ErrorHandler.future]
Future<void> main() async {
  final state = await errorHandler.future(getPost);

  state.whenOrNull(
    data: (post, response) {
      print("title: ${post.title}");
    },
    error: (error) {
      print(getErrorMessage(error));
    },
  );
}
