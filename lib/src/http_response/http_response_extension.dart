/// Covert response to dart class or something else
typedef ResponseConverter<R, RT> = R Function(RT map);

/// [dio.Response] convertor
typedef DioConverter<R> = ResponseConverter<R, Map<String, dynamic>>;
