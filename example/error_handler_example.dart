import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';

import 'post.dart';

FutureResponse<Post> getPost() async {
  final dio = Dio();

  final response = await dio.get("https://jsonplaceholder.typicode.com/posts/1");

  return response.convert(Post.fromJson);
}

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
