import 'package:dio/dio.dart';
import 'package:perfect_error_handler/perfect_error_handler.dart';
import 'post.dart';

FutureResponse<Post> getPost() async {
  final dio = Dio();

  final response = await dio.get("https://jsonplaceholder.typicode.com/posts/1");

  return HttpResponse(Post.fromJson(response.data), response);
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
