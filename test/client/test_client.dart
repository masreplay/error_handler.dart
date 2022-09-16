import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

final dio = Dio(BaseOptions());
final dioAdapter = DioAdapter(dio: dio);
const path = "https://theKeySoftware.com/";
const delay = Duration(seconds: 1);
