Welcome to [Perfect Error Handler](https://pub.dev/packages/error_handler), error handler with type-safety/streaming/freezed-functionality/cover-all-dio-exceptions

# Motivation
`try{}catch(e){}` are hard to use also `then((){}).catch((){})` make code hard to read and modify



- handle all state init/loading/data/error easily
- stream state changes 
- logger for states
- built above freezed
- function tear-off if possible
- **work with any client**
- built on Dio so it covers all types of exceptions also you can add your own!
- [chopper](https://pub.dev/packages/chopper) support

Same as mentioned in [Freezed](https://pub.dev/packages/freezed)
Implementing all of this can take hundreds of lines
and it's hard to make a specific error handler in each project

**Perfect Error Handler** is implemented so all you have to do is start sending requests!

| Before                          | After                          |
| ------------------------------- | ------------------------------ |
| ![before](readme/before.png) | ![after](readme/after.png) |


## How to use
Install

For a Flutter project:
```cmd
flutter pub add error_handler
flutter pub add dio
```

For a Dart project:
```cmd
flutter pub add error_handler
flutter pub add dio
```


## Example
**[read fill example here](example/error_handler_example.dart)**

```dart
import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';

/// first create [Dio] api call
FutureResponse<Post> getPost() async {
  const path = "https://jsonplaceholder.typicode.com/posts/1";

  final response = await Dio().get(path);
  return response.convert(Post.fromJson);
}

/// wrap the api call with [ErrorHandler.future]
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
```

**how t**
```dart

safeApiCall(() {
  return getPost();
}).listen((event) {
    event.whenOrNull(
      data: (post, statusCode) {
        print(post.title);
      },
    );
  });
```

other example
```dart
StreamState<Post> getPostRepository(String id) =>
    safeApiCall(() => getPost(id));
```

## ResultState can use other typedef like
```
ApiResponse, UiState
```

## Credits 🙏
[Freezed](https://github.com/rrousselGit/freezed)
