import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'post.dart';

void testLogger<T>(
  ResultState<T> resultState,
  Object? error,
  StackTrace? trace,
) {
  print("resultState: $resultState");
  if (error != null || trace != null) {
    print(error);
    print(trace);
  }
}

final dio = Dio(BaseOptions());
final dioAdapter = DioAdapter(dio: dio);
const path = "https://theKeySoftware.com/";
final data = {
  "id": 1,
  "userId": 1,
  "title": "title",
  "decryption": "decryption"
};
const delay = Duration(seconds: 1);

const errorMessage = {"code": 404, "message": "post not found"};

/// first create [Dio] api call
FutureResponse<Post> getPost() async {
  dioAdapter.onGet(path, (server) => server.reply(200, data, delay: delay));
  final response = await dio.get(path);
  return response.convert(Post.fromJson);
}

FutureResponse<Post> getPostError() async {
  dioAdapter.onGet(
    path,
    (server) => server.reply(404, errorMessage, delay: delay),
  );
  final response = await dio.get(path);
  return response.convert(Post.fromJson);
}
