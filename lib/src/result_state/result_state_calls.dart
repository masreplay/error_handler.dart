import 'dart:async';

import 'package:error_handler/error_handler.dart';

typedef ApiCall<T> = FutureResponse<T> Function();

/// Stream the [ResultState] class
typedef StreamState<T> = Stream<ResultState<T>>;

typedef FutureState<T> = Future<ResultState<T>>;

typedef FutureOrState<T> = FutureOr<ResultState<T>>;
