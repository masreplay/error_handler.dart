import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'post_test.dart';

/// first create [Dio] api call
FutureResponse<Post> getPost() async {
  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);
  const path = "https://theKeySoftware.com/";
  final data = {
    "id": 1,
    "userId": 1,
    "title": "title",
    "decryption": "decryption"
  };
  dioAdapter.onGet(
    path,
    (server) => server.reply(
      200,
      data,
      delay: const Duration(seconds: 1),
    ),
  );
  final response = await dio.get(path);

  return response.convert(Post.fromJson);
}

/// wrap the api call with [safeApiCall]
void main() {
  group("ErrorHandler.stream", () {
    test("stream", () {
      errorHandler.stream(getPost).listen((event) {
        event.whenOrNull(
          data: (post, response) {
            print("title");
            expect(post.title, "title");
          },
        );
      });
    });
  });
  group("ErrorHandler.future", () {
    test("future", () async {
      final state = await errorHandler.future(getPost);

      state.whenOrNull(
        data: (post, response) {
          print("title");
          expect(post.title, "title");
        },
      );
    });
  });
}
