// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_exception_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function(ResponseValue<dynamic> response)
        responseException,
    required TResult Function() requestCancelled,
    required TResult Function(Object? error) otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(DefinedException exception) definedException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectTimeout value) connectTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(ResponseException value) responseException,
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(OtherException value) otherException,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(UnableToProcessData value) unableToProcessData,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefinedNetworkError value) definedException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkExceptionCopyWith<$Res> {
  factory $NetworkExceptionCopyWith(
          NetworkException value, $Res Function(NetworkException) then) =
      _$NetworkExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkExceptionCopyWithImpl<$Res>
    implements $NetworkExceptionCopyWith<$Res> {
  _$NetworkExceptionCopyWithImpl(this._value, this._then);

  final NetworkException _value;
  // ignore: unused_field
  final $Res Function(NetworkException) _then;
}

/// @nodoc
abstract class _$$ConnectTimeoutCopyWith<$Res> {
  factory _$$ConnectTimeoutCopyWith(
          _$ConnectTimeout value, $Res Function(_$ConnectTimeout) then) =
      __$$ConnectTimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectTimeoutCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements _$$ConnectTimeoutCopyWith<$Res> {
  __$$ConnectTimeoutCopyWithImpl(
      _$ConnectTimeout _value, $Res Function(_$ConnectTimeout) _then)
      : super(_value, (v) => _then(v as _$ConnectTimeout));

  @override
  _$ConnectTimeout get _value => super._value as _$ConnectTimeout;
}

/// @nodoc

class _$ConnectTimeout extends ConnectTimeout {
  const _$ConnectTimeout() : super._();

  @override
  String toString() {
    return 'NetworkException.connectTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function(ResponseValue<dynamic> response)
        responseException,
    required TResult Function() requestCancelled,
    required TResult Function(Object? error) otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(DefinedException exception) definedException,
  }) {
    return connectTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
  }) {
    return connectTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
    required TResult orElse(),
  }) {
    if (connectTimeout != null) {
      return connectTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectTimeout value) connectTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(ResponseException value) responseException,
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(OtherException value) otherException,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(UnableToProcessData value) unableToProcessData,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefinedNetworkError value) definedException,
  }) {
    return connectTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
  }) {
    return connectTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
    required TResult orElse(),
  }) {
    if (connectTimeout != null) {
      return connectTimeout(this);
    }
    return orElse();
  }
}

abstract class ConnectTimeout extends NetworkException {
  const factory ConnectTimeout() = _$ConnectTimeout;
  const ConnectTimeout._() : super._();
}

/// @nodoc
abstract class _$$SendTimeoutCopyWith<$Res> {
  factory _$$SendTimeoutCopyWith(
          _$SendTimeout value, $Res Function(_$SendTimeout) then) =
      __$$SendTimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendTimeoutCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements _$$SendTimeoutCopyWith<$Res> {
  __$$SendTimeoutCopyWithImpl(
      _$SendTimeout _value, $Res Function(_$SendTimeout) _then)
      : super(_value, (v) => _then(v as _$SendTimeout));

  @override
  _$SendTimeout get _value => super._value as _$SendTimeout;
}

/// @nodoc

class _$SendTimeout extends SendTimeout {
  const _$SendTimeout() : super._();

  @override
  String toString() {
    return 'NetworkException.sendTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function(ResponseValue<dynamic> response)
        responseException,
    required TResult Function() requestCancelled,
    required TResult Function(Object? error) otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(DefinedException exception) definedException,
  }) {
    return sendTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
  }) {
    return sendTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectTimeout value) connectTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(ResponseException value) responseException,
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(OtherException value) otherException,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(UnableToProcessData value) unableToProcessData,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefinedNetworkError value) definedException,
  }) {
    return sendTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
  }) {
    return sendTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout(this);
    }
    return orElse();
  }
}

abstract class SendTimeout extends NetworkException {
  const factory SendTimeout() = _$SendTimeout;
  const SendTimeout._() : super._();
}

/// @nodoc
abstract class _$$ReceiveTimeoutCopyWith<$Res> {
  factory _$$ReceiveTimeoutCopyWith(
          _$ReceiveTimeout value, $Res Function(_$ReceiveTimeout) then) =
      __$$ReceiveTimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReceiveTimeoutCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements _$$ReceiveTimeoutCopyWith<$Res> {
  __$$ReceiveTimeoutCopyWithImpl(
      _$ReceiveTimeout _value, $Res Function(_$ReceiveTimeout) _then)
      : super(_value, (v) => _then(v as _$ReceiveTimeout));

  @override
  _$ReceiveTimeout get _value => super._value as _$ReceiveTimeout;
}

/// @nodoc

class _$ReceiveTimeout extends ReceiveTimeout {
  const _$ReceiveTimeout() : super._();

  @override
  String toString() {
    return 'NetworkException.receiveTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReceiveTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function(ResponseValue<dynamic> response)
        responseException,
    required TResult Function() requestCancelled,
    required TResult Function(Object? error) otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(DefinedException exception) definedException,
  }) {
    return receiveTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
  }) {
    return receiveTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectTimeout value) connectTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(ResponseException value) responseException,
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(OtherException value) otherException,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(UnableToProcessData value) unableToProcessData,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefinedNetworkError value) definedException,
  }) {
    return receiveTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
  }) {
    return receiveTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout(this);
    }
    return orElse();
  }
}

abstract class ReceiveTimeout extends NetworkException {
  const factory ReceiveTimeout() = _$ReceiveTimeout;
  const ReceiveTimeout._() : super._();
}

/// @nodoc
abstract class _$$ResponseExceptionCopyWith<$Res> {
  factory _$$ResponseExceptionCopyWith(
          _$ResponseException value, $Res Function(_$ResponseException) then) =
      __$$ResponseExceptionCopyWithImpl<$Res>;
  $Res call({ResponseValue<dynamic> response});
}

/// @nodoc
class __$$ResponseExceptionCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements _$$ResponseExceptionCopyWith<$Res> {
  __$$ResponseExceptionCopyWithImpl(
      _$ResponseException _value, $Res Function(_$ResponseException) _then)
      : super(_value, (v) => _then(v as _$ResponseException));

  @override
  _$ResponseException get _value => super._value as _$ResponseException;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$ResponseException(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponseValue<dynamic>,
    ));
  }
}

/// @nodoc

class _$ResponseException extends ResponseException {
  const _$ResponseException(this.response) : super._();

  @override
  final ResponseValue<dynamic> response;

  @override
  String toString() {
    return 'NetworkException.responseException(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseException &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$$ResponseExceptionCopyWith<_$ResponseException> get copyWith =>
      __$$ResponseExceptionCopyWithImpl<_$ResponseException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function(ResponseValue<dynamic> response)
        responseException,
    required TResult Function() requestCancelled,
    required TResult Function(Object? error) otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(DefinedException exception) definedException,
  }) {
    return responseException(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
  }) {
    return responseException?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
    required TResult orElse(),
  }) {
    if (responseException != null) {
      return responseException(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectTimeout value) connectTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(ResponseException value) responseException,
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(OtherException value) otherException,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(UnableToProcessData value) unableToProcessData,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefinedNetworkError value) definedException,
  }) {
    return responseException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
  }) {
    return responseException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
    required TResult orElse(),
  }) {
    if (responseException != null) {
      return responseException(this);
    }
    return orElse();
  }
}

abstract class ResponseException extends NetworkException {
  const factory ResponseException(final ResponseValue<dynamic> response) =
      _$ResponseException;
  const ResponseException._() : super._();

  ResponseValue<dynamic> get response;
  @JsonKey(ignore: true)
  _$$ResponseExceptionCopyWith<_$ResponseException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestCancelledCopyWith<$Res> {
  factory _$$RequestCancelledCopyWith(
          _$RequestCancelled value, $Res Function(_$RequestCancelled) then) =
      __$$RequestCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestCancelledCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements _$$RequestCancelledCopyWith<$Res> {
  __$$RequestCancelledCopyWithImpl(
      _$RequestCancelled _value, $Res Function(_$RequestCancelled) _then)
      : super(_value, (v) => _then(v as _$RequestCancelled));

  @override
  _$RequestCancelled get _value => super._value as _$RequestCancelled;
}

/// @nodoc

class _$RequestCancelled extends RequestCancelled {
  const _$RequestCancelled() : super._();

  @override
  String toString() {
    return 'NetworkException.requestCancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function(ResponseValue<dynamic> response)
        responseException,
    required TResult Function() requestCancelled,
    required TResult Function(Object? error) otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(DefinedException exception) definedException,
  }) {
    return requestCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
  }) {
    return requestCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectTimeout value) connectTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(ResponseException value) responseException,
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(OtherException value) otherException,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(UnableToProcessData value) unableToProcessData,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefinedNetworkError value) definedException,
  }) {
    return requestCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
  }) {
    return requestCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled(this);
    }
    return orElse();
  }
}

abstract class RequestCancelled extends NetworkException {
  const factory RequestCancelled() = _$RequestCancelled;
  const RequestCancelled._() : super._();
}

/// @nodoc
abstract class _$$OtherExceptionCopyWith<$Res> {
  factory _$$OtherExceptionCopyWith(
          _$OtherException value, $Res Function(_$OtherException) then) =
      __$$OtherExceptionCopyWithImpl<$Res>;
  $Res call({Object? error});
}

/// @nodoc
class __$$OtherExceptionCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements _$$OtherExceptionCopyWith<$Res> {
  __$$OtherExceptionCopyWithImpl(
      _$OtherException _value, $Res Function(_$OtherException) _then)
      : super(_value, (v) => _then(v as _$OtherException));

  @override
  _$OtherException get _value => super._value as _$OtherException;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$OtherException(
      error == freezed ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$OtherException extends OtherException {
  const _$OtherException([this.error]) : super._();

  @override
  final Object? error;

  @override
  String toString() {
    return 'NetworkException.otherException(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherException &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$OtherExceptionCopyWith<_$OtherException> get copyWith =>
      __$$OtherExceptionCopyWithImpl<_$OtherException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function(ResponseValue<dynamic> response)
        responseException,
    required TResult Function() requestCancelled,
    required TResult Function(Object? error) otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(DefinedException exception) definedException,
  }) {
    return otherException(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
  }) {
    return otherException?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
    required TResult orElse(),
  }) {
    if (otherException != null) {
      return otherException(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectTimeout value) connectTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(ResponseException value) responseException,
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(OtherException value) otherException,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(UnableToProcessData value) unableToProcessData,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefinedNetworkError value) definedException,
  }) {
    return otherException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
  }) {
    return otherException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
    required TResult orElse(),
  }) {
    if (otherException != null) {
      return otherException(this);
    }
    return orElse();
  }
}

abstract class OtherException extends NetworkException {
  const factory OtherException([final Object? error]) = _$OtherException;
  const OtherException._() : super._();

  Object? get error;
  @JsonKey(ignore: true)
  _$$OtherExceptionCopyWith<_$OtherException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetConnectionCopyWith<$Res> {
  factory _$$NoInternetConnectionCopyWith(_$NoInternetConnection value,
          $Res Function(_$NoInternetConnection) then) =
      __$$NoInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetConnectionCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements _$$NoInternetConnectionCopyWith<$Res> {
  __$$NoInternetConnectionCopyWithImpl(_$NoInternetConnection _value,
      $Res Function(_$NoInternetConnection) _then)
      : super(_value, (v) => _then(v as _$NoInternetConnection));

  @override
  _$NoInternetConnection get _value => super._value as _$NoInternetConnection;
}

/// @nodoc

class _$NoInternetConnection extends NoInternetConnection {
  const _$NoInternetConnection() : super._();

  @override
  String toString() {
    return 'NetworkException.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function(ResponseValue<dynamic> response)
        responseException,
    required TResult Function() requestCancelled,
    required TResult Function(Object? error) otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(DefinedException exception) definedException,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectTimeout value) connectTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(ResponseException value) responseException,
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(OtherException value) otherException,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(UnableToProcessData value) unableToProcessData,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefinedNetworkError value) definedException,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection extends NetworkException {
  const factory NoInternetConnection() = _$NoInternetConnection;
  const NoInternetConnection._() : super._();
}

/// @nodoc
abstract class _$$UnableToProcessDataCopyWith<$Res> {
  factory _$$UnableToProcessDataCopyWith(_$UnableToProcessData value,
          $Res Function(_$UnableToProcessData) then) =
      __$$UnableToProcessDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnableToProcessDataCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements _$$UnableToProcessDataCopyWith<$Res> {
  __$$UnableToProcessDataCopyWithImpl(
      _$UnableToProcessData _value, $Res Function(_$UnableToProcessData) _then)
      : super(_value, (v) => _then(v as _$UnableToProcessData));

  @override
  _$UnableToProcessData get _value => super._value as _$UnableToProcessData;
}

/// @nodoc

class _$UnableToProcessData extends UnableToProcessData {
  const _$UnableToProcessData() : super._();

  @override
  String toString() {
    return 'NetworkException.unableToProcessData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnableToProcessData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function(ResponseValue<dynamic> response)
        responseException,
    required TResult Function() requestCancelled,
    required TResult Function(Object? error) otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(DefinedException exception) definedException,
  }) {
    return unableToProcessData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
  }) {
    return unableToProcessData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
    required TResult orElse(),
  }) {
    if (unableToProcessData != null) {
      return unableToProcessData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectTimeout value) connectTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(ResponseException value) responseException,
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(OtherException value) otherException,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(UnableToProcessData value) unableToProcessData,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefinedNetworkError value) definedException,
  }) {
    return unableToProcessData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
  }) {
    return unableToProcessData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
    required TResult orElse(),
  }) {
    if (unableToProcessData != null) {
      return unableToProcessData(this);
    }
    return orElse();
  }
}

abstract class UnableToProcessData extends NetworkException {
  const factory UnableToProcessData() = _$UnableToProcessData;
  const UnableToProcessData._() : super._();
}

/// @nodoc
abstract class _$$UnexpectedErrorCopyWith<$Res> {
  factory _$$UnexpectedErrorCopyWith(
          _$UnexpectedError value, $Res Function(_$UnexpectedError) then) =
      __$$UnexpectedErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedErrorCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements _$$UnexpectedErrorCopyWith<$Res> {
  __$$UnexpectedErrorCopyWithImpl(
      _$UnexpectedError _value, $Res Function(_$UnexpectedError) _then)
      : super(_value, (v) => _then(v as _$UnexpectedError));

  @override
  _$UnexpectedError get _value => super._value as _$UnexpectedError;
}

/// @nodoc

class _$UnexpectedError extends UnexpectedError {
  const _$UnexpectedError() : super._();

  @override
  String toString() {
    return 'NetworkException.unexpectedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function(ResponseValue<dynamic> response)
        responseException,
    required TResult Function() requestCancelled,
    required TResult Function(Object? error) otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(DefinedException exception) definedException,
  }) {
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
  }) {
    return unexpectedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectTimeout value) connectTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(ResponseException value) responseException,
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(OtherException value) otherException,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(UnableToProcessData value) unableToProcessData,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefinedNetworkError value) definedException,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class UnexpectedError extends NetworkException {
  const factory UnexpectedError() = _$UnexpectedError;
  const UnexpectedError._() : super._();
}

/// @nodoc
abstract class _$$DefinedNetworkErrorCopyWith<$Res> {
  factory _$$DefinedNetworkErrorCopyWith(_$DefinedNetworkError value,
          $Res Function(_$DefinedNetworkError) then) =
      __$$DefinedNetworkErrorCopyWithImpl<$Res>;
  $Res call({DefinedException exception});
}

/// @nodoc
class __$$DefinedNetworkErrorCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements _$$DefinedNetworkErrorCopyWith<$Res> {
  __$$DefinedNetworkErrorCopyWithImpl(
      _$DefinedNetworkError _value, $Res Function(_$DefinedNetworkError) _then)
      : super(_value, (v) => _then(v as _$DefinedNetworkError));

  @override
  _$DefinedNetworkError get _value => super._value as _$DefinedNetworkError;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$DefinedNetworkError(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as DefinedException,
    ));
  }
}

/// @nodoc

class _$DefinedNetworkError extends DefinedNetworkError {
  _$DefinedNetworkError(this.exception) : super._();

  @override
  final DefinedException exception;

  @override
  String toString() {
    return 'NetworkException.definedException(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefinedNetworkError &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$$DefinedNetworkErrorCopyWith<_$DefinedNetworkError> get copyWith =>
      __$$DefinedNetworkErrorCopyWithImpl<_$DefinedNetworkError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function(ResponseValue<dynamic> response)
        responseException,
    required TResult Function() requestCancelled,
    required TResult Function(Object? error) otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(DefinedException exception) definedException,
  }) {
    return definedException(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
  }) {
    return definedException?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function(Object? error)? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(DefinedException exception)? definedException,
    required TResult orElse(),
  }) {
    if (definedException != null) {
      return definedException(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectTimeout value) connectTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(ReceiveTimeout value) receiveTimeout,
    required TResult Function(ResponseException value) responseException,
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(OtherException value) otherException,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(UnableToProcessData value) unableToProcessData,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(DefinedNetworkError value) definedException,
  }) {
    return definedException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
  }) {
    return definedException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout value)? connectTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(ReceiveTimeout value)? receiveTimeout,
    TResult Function(ResponseException value)? responseException,
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(OtherException value)? otherException,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(UnableToProcessData value)? unableToProcessData,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(DefinedNetworkError value)? definedException,
    required TResult orElse(),
  }) {
    if (definedException != null) {
      return definedException(this);
    }
    return orElse();
  }
}

abstract class DefinedNetworkError extends NetworkException {
  factory DefinedNetworkError(final DefinedException exception) =
      _$DefinedNetworkError;
  DefinedNetworkError._() : super._();

  DefinedException get exception;
  @JsonKey(ignore: true)
  _$$DefinedNetworkErrorCopyWith<_$DefinedNetworkError> get copyWith =>
      throw _privateConstructorUsedError;
}
