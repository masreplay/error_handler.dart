import 'dart:io';

import 'package:dio/dio.dart';

import 'post.dart';

// or you can use [Either] for flutter only give you type safe
// Unexpected Error Occurred type 'Post' is not a subtype of type 'int?'
Future<List<dynamic>?> getPost() async {
  final dio = Dio();

  try {
    final response =
        await dio.get("https://jsonplaceholder.typicode.com/posts/1");

    final post = Post.fromJson(response.data);

    return [post, response.statusCode];
  } on SocketException {
    print("Unexpected Error Occurred");
  } catch (e, trace) {
    print(trace);
    if (e is DioError) {
      switch (e.type) {
        case DioErrorType.connectTimeout:
          print("connectTimeout");
          break;
        case DioErrorType.sendTimeout:
          print("sendTimeout");
          break;
        case DioErrorType.cancel:
          print("cancel");
          break;
        case DioErrorType.receiveTimeout:
          print("receiveTimeout");
          break;
        case DioErrorType.response:
          return [null, e.response?.statusCode];

        case DioErrorType.other:
          print("other");
          break;
      }
      print("Unexpected Error Occurred $e");
    }
  }
  // return null not the error it self :(
  return null;
}

Future<void> main() async {
  var isLoading = false;

  print("init");
  Post? response;
  int? statusCode;

  isLoading = true;
  print("loading... ");

  await getPost().then((List<dynamic>? value) {
    // can't access status code only data
    
    statusCode = value?[1];
    response = value?[0];
    print(response?.title);
  }).catchError((e) {
    final errorMessage = e.toString();
    print("Unexpected Error Occurred $errorMessage");
  });

  isLoading = false;
  print("finish... ");
}
