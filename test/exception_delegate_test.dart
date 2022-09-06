import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

class ProjectNetworkExceptionDelegate extends NetworkExceptionDelegate {
  @override
  NetworkException whenResponseException(ResponseValue response) {
    if (response.statusCode == 500) {
      return NetworkException.unexpectedError();
    }

    return super.whenResponseException(response);
  }
}

Future<void> main() async {
  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  const path = 'https://example.com';

  dioAdapter.onGet(
    path,
    (server) => server.reply(
      200,
      {'message': 'Success!'},
      // Reply would wait for one-sec before returning data.
      delay: const Duration(seconds: 1),
    ),
  );

  final response = await dio.get(path);

  test('.parse() fails on invalid input', () {
    expect(response.data, {'message': 'Success!'});
  });
}
