import 'package:error_handler/error_handler.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'client/post.dart';

/// wrap the api call with [safeApiCall]
void main() {
  group("ErrorHandler.stream", () {
    test("ResultState.data", () {
      errorHandler.stream(getPost).listen((event) {
        expect(event.isData, true);
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
      final state = await errorHandler.future(getPost);
      expect(state.isData, true);

      state.whenOrNull(data: (post, response) {
        print("title");
        expect(post.title, "title");
      });
    });
    test("ResultState.error", () async {
      final state = await errorHandler.future(getPostError);
      expect(state.isError, true);

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
