import 'package:dio/dio.dart' show Dio;
import 'package:error_handler/error_handler.dart';

import 'post.dart';

class UserTypeNetworkExceptionDelegate extends NetworkExceptionDelegate {
  @override
  NetworkException whenResponseException(ResponseValue response) {
    if (response.data["userType"] == "Agent") {
      return NetworkException.unexpectedError();
    }

    return super.whenResponseException(response);
  }
}

FutureResponse<Post> getPost() async {
  final response =
      await Dio().get("https://jsonplaceholder.typicode.com/posts/1");

  return response.convert(Post.fromJson);
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
