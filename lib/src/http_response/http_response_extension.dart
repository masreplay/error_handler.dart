/// Covert response to dart class or something else
typedef ResponseConverter<R, RT> = R Function(RT);

/// [dio.Response] convertor
/// https://github.com/dart-lang/dartdoc/issues/3132
// typedef DioConverter<T> = ResponseConverter<T, Map<String, dynamic>>;
