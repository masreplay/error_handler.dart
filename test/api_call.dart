import 'package:dio/dio.dart';
import 'package:error_handler/src/https_response.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'models.dart';

FutureResponse<User> getUser(Map<String, dynamic> data) async {
  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  const path = 'https://example.com';

  dioAdapter.onGet(
    path,
    (server) => server.reply(
      200,
      data,
      delay: const Duration(seconds: 1),
    ),
  );

  final response = await dio.get(path);

  return HttpResponse(User.fromJson(response.data), response);
}
