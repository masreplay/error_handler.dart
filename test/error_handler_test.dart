import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'post_test.dart';

final dio = Dio(BaseOptions());
final dioAdapter = DioAdapter(dio: dio);
const _path = "https://theKeySoftware.com/";
final _data = {
  "id": 1,
  "userId": 1,
  "title": "title",
  "decryption": "decryption"
};
const _delay = Duration(seconds: 1);

const _errorMessage = {"code": 404, "message": "post not found"};

/// first create [Dio] api call
FutureResponse<Post> _getPost() async {
  dioAdapter.onGet(_path, (server) => server.reply(200, _data, delay: _delay));
  final response = await dio.get(_path);
  return response.convert(Post.fromJson);
}

FutureResponse<Post> _getPostError() async {
  dioAdapter.onGet(
    _path,
    (server) => server.reply(404, _errorMessage, delay: _delay),
  );
  final response = await dio.get(_path);
  return response.convert(Post.fromJson);
}

/// wrap the api call with [safeApiCall]
void main() {
  group("ErrorHandler.stream", () {
    test("stream", () {
      errorHandler.stream(_getPost).listen((event) {
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
    test("ResultState.data", () async {
      final state = await errorHandler.future(_getPost);

      state.whenOrNull(data: (post, response) {
        print("title");
        expect(post.title, "title");
      });
    });
    test("ResultState.error", () async {
      final state = await errorHandler.future(_getPostError);

      state.whenOrNull(error: (exception) {
        exception.whenOrNull(
          responseException: (response) {
            expect(response.statusCode, 404);
          },
        );
      });
    });
  });
}
