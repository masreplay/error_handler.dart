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
mixin _$NetworkException<T extends Exception> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connectTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function(ResponseValue<dynamic> response)
        responseException,
    required TResult Function() requestCancelled,
    required TResult Function() otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(T error) userDefinedException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectTimeout<T> value) connectTimeout,
    required TResult Function(SendTimeout<T> value) sendTimeout,
    required TResult Function(ReceiveTimeout<T> value) receiveTimeout,
    required TResult Function(ResponseException<T> value) responseException,
    required TResult Function(RequestCancelled<T> value) requestCancelled,
    required TResult Function(OtherException<T> value) otherException,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(UnableToProcessData<T> value) unableToProcessData,
    required TResult Function(UnexpectedError<T> value) unexpectedError,
    required TResult Function(UserDefinedException<T> value)
        userDefinedException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkExceptionCopyWith<T extends Exception, $Res> {
  factory $NetworkExceptionCopyWith(
          NetworkException<T> value, $Res Function(NetworkException<T>) then) =
      _$NetworkExceptionCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$NetworkExceptionCopyWithImpl<T extends Exception, $Res>
    implements $NetworkExceptionCopyWith<T, $Res> {
  _$NetworkExceptionCopyWithImpl(this._value, this._then);

  final NetworkException<T> _value;
  // ignore: unused_field
  final $Res Function(NetworkException<T>) _then;
}

/// @nodoc
abstract class _$$ConnectTimeoutCopyWith<T extends Exception, $Res> {
  factory _$$ConnectTimeoutCopyWith(
          _$ConnectTimeout<T> value, $Res Function(_$ConnectTimeout<T>) then) =
      __$$ConnectTimeoutCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ConnectTimeoutCopyWithImpl<T extends Exception, $Res>
    extends _$NetworkExceptionCopyWithImpl<T, $Res>
    implements _$$ConnectTimeoutCopyWith<T, $Res> {
  __$$ConnectTimeoutCopyWithImpl(
      _$ConnectTimeout<T> _value, $Res Function(_$ConnectTimeout<T>) _then)
      : super(_value, (v) => _then(v as _$ConnectTimeout<T>));

  @override
  _$ConnectTimeout<T> get _value => super._value as _$ConnectTimeout<T>;
}

/// @nodoc

class _$ConnectTimeout<T extends Exception> implements ConnectTimeout<T> {
  const _$ConnectTimeout();

  @override
  String toString() {
    return 'NetworkException<$T>.connectTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectTimeout<T>);
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
    required TResult Function() otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(T error) userDefinedException,
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
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
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
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
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
    required TResult Function(ConnectTimeout<T> value) connectTimeout,
    required TResult Function(SendTimeout<T> value) sendTimeout,
    required TResult Function(ReceiveTimeout<T> value) receiveTimeout,
    required TResult Function(ResponseException<T> value) responseException,
    required TResult Function(RequestCancelled<T> value) requestCancelled,
    required TResult Function(OtherException<T> value) otherException,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(UnableToProcessData<T> value) unableToProcessData,
    required TResult Function(UnexpectedError<T> value) unexpectedError,
    required TResult Function(UserDefinedException<T> value)
        userDefinedException,
  }) {
    return connectTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
  }) {
    return connectTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
    required TResult orElse(),
  }) {
    if (connectTimeout != null) {
      return connectTimeout(this);
    }
    return orElse();
  }
}

abstract class ConnectTimeout<T extends Exception>
    implements NetworkException<T> {
  const factory ConnectTimeout() = _$ConnectTimeout<T>;
}

/// @nodoc
abstract class _$$SendTimeoutCopyWith<T extends Exception, $Res> {
  factory _$$SendTimeoutCopyWith(
          _$SendTimeout<T> value, $Res Function(_$SendTimeout<T>) then) =
      __$$SendTimeoutCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SendTimeoutCopyWithImpl<T extends Exception, $Res>
    extends _$NetworkExceptionCopyWithImpl<T, $Res>
    implements _$$SendTimeoutCopyWith<T, $Res> {
  __$$SendTimeoutCopyWithImpl(
      _$SendTimeout<T> _value, $Res Function(_$SendTimeout<T>) _then)
      : super(_value, (v) => _then(v as _$SendTimeout<T>));

  @override
  _$SendTimeout<T> get _value => super._value as _$SendTimeout<T>;
}

/// @nodoc

class _$SendTimeout<T extends Exception> implements SendTimeout<T> {
  const _$SendTimeout();

  @override
  String toString() {
    return 'NetworkException<$T>.sendTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendTimeout<T>);
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
    required TResult Function() otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(T error) userDefinedException,
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
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
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
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
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
    required TResult Function(ConnectTimeout<T> value) connectTimeout,
    required TResult Function(SendTimeout<T> value) sendTimeout,
    required TResult Function(ReceiveTimeout<T> value) receiveTimeout,
    required TResult Function(ResponseException<T> value) responseException,
    required TResult Function(RequestCancelled<T> value) requestCancelled,
    required TResult Function(OtherException<T> value) otherException,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(UnableToProcessData<T> value) unableToProcessData,
    required TResult Function(UnexpectedError<T> value) unexpectedError,
    required TResult Function(UserDefinedException<T> value)
        userDefinedException,
  }) {
    return sendTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
  }) {
    return sendTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout(this);
    }
    return orElse();
  }
}

abstract class SendTimeout<T extends Exception> implements NetworkException<T> {
  const factory SendTimeout() = _$SendTimeout<T>;
}

/// @nodoc
abstract class _$$ReceiveTimeoutCopyWith<T extends Exception, $Res> {
  factory _$$ReceiveTimeoutCopyWith(
          _$ReceiveTimeout<T> value, $Res Function(_$ReceiveTimeout<T>) then) =
      __$$ReceiveTimeoutCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ReceiveTimeoutCopyWithImpl<T extends Exception, $Res>
    extends _$NetworkExceptionCopyWithImpl<T, $Res>
    implements _$$ReceiveTimeoutCopyWith<T, $Res> {
  __$$ReceiveTimeoutCopyWithImpl(
      _$ReceiveTimeout<T> _value, $Res Function(_$ReceiveTimeout<T>) _then)
      : super(_value, (v) => _then(v as _$ReceiveTimeout<T>));

  @override
  _$ReceiveTimeout<T> get _value => super._value as _$ReceiveTimeout<T>;
}

/// @nodoc

class _$ReceiveTimeout<T extends Exception> implements ReceiveTimeout<T> {
  const _$ReceiveTimeout();

  @override
  String toString() {
    return 'NetworkException<$T>.receiveTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReceiveTimeout<T>);
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
    required TResult Function() otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(T error) userDefinedException,
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
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
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
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
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
    required TResult Function(ConnectTimeout<T> value) connectTimeout,
    required TResult Function(SendTimeout<T> value) sendTimeout,
    required TResult Function(ReceiveTimeout<T> value) receiveTimeout,
    required TResult Function(ResponseException<T> value) responseException,
    required TResult Function(RequestCancelled<T> value) requestCancelled,
    required TResult Function(OtherException<T> value) otherException,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(UnableToProcessData<T> value) unableToProcessData,
    required TResult Function(UnexpectedError<T> value) unexpectedError,
    required TResult Function(UserDefinedException<T> value)
        userDefinedException,
  }) {
    return receiveTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
  }) {
    return receiveTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout(this);
    }
    return orElse();
  }
}

abstract class ReceiveTimeout<T extends Exception>
    implements NetworkException<T> {
  const factory ReceiveTimeout() = _$ReceiveTimeout<T>;
}

/// @nodoc
abstract class _$$ResponseExceptionCopyWith<T extends Exception, $Res> {
  factory _$$ResponseExceptionCopyWith(_$ResponseException<T> value,
          $Res Function(_$ResponseException<T>) then) =
      __$$ResponseExceptionCopyWithImpl<T, $Res>;
  $Res call({ResponseValue<dynamic> response});
}

/// @nodoc
class __$$ResponseExceptionCopyWithImpl<T extends Exception, $Res>
    extends _$NetworkExceptionCopyWithImpl<T, $Res>
    implements _$$ResponseExceptionCopyWith<T, $Res> {
  __$$ResponseExceptionCopyWithImpl(_$ResponseException<T> _value,
      $Res Function(_$ResponseException<T>) _then)
      : super(_value, (v) => _then(v as _$ResponseException<T>));

  @override
  _$ResponseException<T> get _value => super._value as _$ResponseException<T>;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$ResponseException<T>(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponseValue<dynamic>,
    ));
  }
}

/// @nodoc

class _$ResponseException<T extends Exception> implements ResponseException<T> {
  const _$ResponseException(this.response);

  @override
  final ResponseValue<dynamic> response;

  @override
  String toString() {
    return 'NetworkException<$T>.responseException(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseException<T> &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$$ResponseExceptionCopyWith<T, _$ResponseException<T>> get copyWith =>
      __$$ResponseExceptionCopyWithImpl<T, _$ResponseException<T>>(
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
    required TResult Function() otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(T error) userDefinedException,
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
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
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
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
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
    required TResult Function(ConnectTimeout<T> value) connectTimeout,
    required TResult Function(SendTimeout<T> value) sendTimeout,
    required TResult Function(ReceiveTimeout<T> value) receiveTimeout,
    required TResult Function(ResponseException<T> value) responseException,
    required TResult Function(RequestCancelled<T> value) requestCancelled,
    required TResult Function(OtherException<T> value) otherException,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(UnableToProcessData<T> value) unableToProcessData,
    required TResult Function(UnexpectedError<T> value) unexpectedError,
    required TResult Function(UserDefinedException<T> value)
        userDefinedException,
  }) {
    return responseException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
  }) {
    return responseException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
    required TResult orElse(),
  }) {
    if (responseException != null) {
      return responseException(this);
    }
    return orElse();
  }
}

abstract class ResponseException<T extends Exception>
    implements NetworkException<T> {
  const factory ResponseException(final ResponseValue<dynamic> response) =
      _$ResponseException<T>;

  ResponseValue<dynamic> get response;
  @JsonKey(ignore: true)
  _$$ResponseExceptionCopyWith<T, _$ResponseException<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestCancelledCopyWith<T extends Exception, $Res> {
  factory _$$RequestCancelledCopyWith(_$RequestCancelled<T> value,
          $Res Function(_$RequestCancelled<T>) then) =
      __$$RequestCancelledCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RequestCancelledCopyWithImpl<T extends Exception, $Res>
    extends _$NetworkExceptionCopyWithImpl<T, $Res>
    implements _$$RequestCancelledCopyWith<T, $Res> {
  __$$RequestCancelledCopyWithImpl(
      _$RequestCancelled<T> _value, $Res Function(_$RequestCancelled<T>) _then)
      : super(_value, (v) => _then(v as _$RequestCancelled<T>));

  @override
  _$RequestCancelled<T> get _value => super._value as _$RequestCancelled<T>;
}

/// @nodoc

class _$RequestCancelled<T extends Exception> implements RequestCancelled<T> {
  const _$RequestCancelled();

  @override
  String toString() {
    return 'NetworkException<$T>.requestCancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestCancelled<T>);
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
    required TResult Function() otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(T error) userDefinedException,
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
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
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
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
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
    required TResult Function(ConnectTimeout<T> value) connectTimeout,
    required TResult Function(SendTimeout<T> value) sendTimeout,
    required TResult Function(ReceiveTimeout<T> value) receiveTimeout,
    required TResult Function(ResponseException<T> value) responseException,
    required TResult Function(RequestCancelled<T> value) requestCancelled,
    required TResult Function(OtherException<T> value) otherException,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(UnableToProcessData<T> value) unableToProcessData,
    required TResult Function(UnexpectedError<T> value) unexpectedError,
    required TResult Function(UserDefinedException<T> value)
        userDefinedException,
  }) {
    return requestCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
  }) {
    return requestCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled(this);
    }
    return orElse();
  }
}

abstract class RequestCancelled<T extends Exception>
    implements NetworkException<T> {
  const factory RequestCancelled() = _$RequestCancelled<T>;
}

/// @nodoc
abstract class _$$OtherExceptionCopyWith<T extends Exception, $Res> {
  factory _$$OtherExceptionCopyWith(
          _$OtherException<T> value, $Res Function(_$OtherException<T>) then) =
      __$$OtherExceptionCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$OtherExceptionCopyWithImpl<T extends Exception, $Res>
    extends _$NetworkExceptionCopyWithImpl<T, $Res>
    implements _$$OtherExceptionCopyWith<T, $Res> {
  __$$OtherExceptionCopyWithImpl(
      _$OtherException<T> _value, $Res Function(_$OtherException<T>) _then)
      : super(_value, (v) => _then(v as _$OtherException<T>));

  @override
  _$OtherException<T> get _value => super._value as _$OtherException<T>;
}

/// @nodoc

class _$OtherException<T extends Exception> implements OtherException<T> {
  const _$OtherException();

  @override
  String toString() {
    return 'NetworkException<$T>.otherException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtherException<T>);
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
    required TResult Function() otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(T error) userDefinedException,
  }) {
    return otherException();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
  }) {
    return otherException?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
    required TResult orElse(),
  }) {
    if (otherException != null) {
      return otherException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectTimeout<T> value) connectTimeout,
    required TResult Function(SendTimeout<T> value) sendTimeout,
    required TResult Function(ReceiveTimeout<T> value) receiveTimeout,
    required TResult Function(ResponseException<T> value) responseException,
    required TResult Function(RequestCancelled<T> value) requestCancelled,
    required TResult Function(OtherException<T> value) otherException,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(UnableToProcessData<T> value) unableToProcessData,
    required TResult Function(UnexpectedError<T> value) unexpectedError,
    required TResult Function(UserDefinedException<T> value)
        userDefinedException,
  }) {
    return otherException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
  }) {
    return otherException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
    required TResult orElse(),
  }) {
    if (otherException != null) {
      return otherException(this);
    }
    return orElse();
  }
}

abstract class OtherException<T extends Exception>
    implements NetworkException<T> {
  const factory OtherException() = _$OtherException<T>;
}

/// @nodoc
abstract class _$$NoInternetConnectionCopyWith<T extends Exception, $Res> {
  factory _$$NoInternetConnectionCopyWith(_$NoInternetConnection<T> value,
          $Res Function(_$NoInternetConnection<T>) then) =
      __$$NoInternetConnectionCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NoInternetConnectionCopyWithImpl<T extends Exception, $Res>
    extends _$NetworkExceptionCopyWithImpl<T, $Res>
    implements _$$NoInternetConnectionCopyWith<T, $Res> {
  __$$NoInternetConnectionCopyWithImpl(_$NoInternetConnection<T> _value,
      $Res Function(_$NoInternetConnection<T>) _then)
      : super(_value, (v) => _then(v as _$NoInternetConnection<T>));

  @override
  _$NoInternetConnection<T> get _value =>
      super._value as _$NoInternetConnection<T>;
}

/// @nodoc

class _$NoInternetConnection<T extends Exception>
    implements NoInternetConnection<T> {
  const _$NoInternetConnection();

  @override
  String toString() {
    return 'NetworkException<$T>.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetConnection<T>);
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
    required TResult Function() otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(T error) userDefinedException,
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
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
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
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
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
    required TResult Function(ConnectTimeout<T> value) connectTimeout,
    required TResult Function(SendTimeout<T> value) sendTimeout,
    required TResult Function(ReceiveTimeout<T> value) receiveTimeout,
    required TResult Function(ResponseException<T> value) responseException,
    required TResult Function(RequestCancelled<T> value) requestCancelled,
    required TResult Function(OtherException<T> value) otherException,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(UnableToProcessData<T> value) unableToProcessData,
    required TResult Function(UnexpectedError<T> value) unexpectedError,
    required TResult Function(UserDefinedException<T> value)
        userDefinedException,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection<T extends Exception>
    implements NetworkException<T> {
  const factory NoInternetConnection() = _$NoInternetConnection<T>;
}

/// @nodoc
abstract class _$$UnableToProcessDataCopyWith<T extends Exception, $Res> {
  factory _$$UnableToProcessDataCopyWith(_$UnableToProcessData<T> value,
          $Res Function(_$UnableToProcessData<T>) then) =
      __$$UnableToProcessDataCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$UnableToProcessDataCopyWithImpl<T extends Exception, $Res>
    extends _$NetworkExceptionCopyWithImpl<T, $Res>
    implements _$$UnableToProcessDataCopyWith<T, $Res> {
  __$$UnableToProcessDataCopyWithImpl(_$UnableToProcessData<T> _value,
      $Res Function(_$UnableToProcessData<T>) _then)
      : super(_value, (v) => _then(v as _$UnableToProcessData<T>));

  @override
  _$UnableToProcessData<T> get _value =>
      super._value as _$UnableToProcessData<T>;
}

/// @nodoc

class _$UnableToProcessData<T extends Exception>
    implements UnableToProcessData<T> {
  const _$UnableToProcessData();

  @override
  String toString() {
    return 'NetworkException<$T>.unableToProcessData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnableToProcessData<T>);
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
    required TResult Function() otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(T error) userDefinedException,
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
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
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
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
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
    required TResult Function(ConnectTimeout<T> value) connectTimeout,
    required TResult Function(SendTimeout<T> value) sendTimeout,
    required TResult Function(ReceiveTimeout<T> value) receiveTimeout,
    required TResult Function(ResponseException<T> value) responseException,
    required TResult Function(RequestCancelled<T> value) requestCancelled,
    required TResult Function(OtherException<T> value) otherException,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(UnableToProcessData<T> value) unableToProcessData,
    required TResult Function(UnexpectedError<T> value) unexpectedError,
    required TResult Function(UserDefinedException<T> value)
        userDefinedException,
  }) {
    return unableToProcessData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
  }) {
    return unableToProcessData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
    required TResult orElse(),
  }) {
    if (unableToProcessData != null) {
      return unableToProcessData(this);
    }
    return orElse();
  }
}

abstract class UnableToProcessData<T extends Exception>
    implements NetworkException<T> {
  const factory UnableToProcessData() = _$UnableToProcessData<T>;
}

/// @nodoc
abstract class _$$UnexpectedErrorCopyWith<T extends Exception, $Res> {
  factory _$$UnexpectedErrorCopyWith(_$UnexpectedError<T> value,
          $Res Function(_$UnexpectedError<T>) then) =
      __$$UnexpectedErrorCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$UnexpectedErrorCopyWithImpl<T extends Exception, $Res>
    extends _$NetworkExceptionCopyWithImpl<T, $Res>
    implements _$$UnexpectedErrorCopyWith<T, $Res> {
  __$$UnexpectedErrorCopyWithImpl(
      _$UnexpectedError<T> _value, $Res Function(_$UnexpectedError<T>) _then)
      : super(_value, (v) => _then(v as _$UnexpectedError<T>));

  @override
  _$UnexpectedError<T> get _value => super._value as _$UnexpectedError<T>;
}

/// @nodoc

class _$UnexpectedError<T extends Exception> implements UnexpectedError<T> {
  const _$UnexpectedError();

  @override
  String toString() {
    return 'NetworkException<$T>.unexpectedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedError<T>);
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
    required TResult Function() otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(T error) userDefinedException,
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
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
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
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
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
    required TResult Function(ConnectTimeout<T> value) connectTimeout,
    required TResult Function(SendTimeout<T> value) sendTimeout,
    required TResult Function(ReceiveTimeout<T> value) receiveTimeout,
    required TResult Function(ResponseException<T> value) responseException,
    required TResult Function(RequestCancelled<T> value) requestCancelled,
    required TResult Function(OtherException<T> value) otherException,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(UnableToProcessData<T> value) unableToProcessData,
    required TResult Function(UnexpectedError<T> value) unexpectedError,
    required TResult Function(UserDefinedException<T> value)
        userDefinedException,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class UnexpectedError<T extends Exception>
    implements NetworkException<T> {
  const factory UnexpectedError() = _$UnexpectedError<T>;
}

/// @nodoc
abstract class _$$UserDefinedExceptionCopyWith<T extends Exception, $Res> {
  factory _$$UserDefinedExceptionCopyWith(_$UserDefinedException<T> value,
          $Res Function(_$UserDefinedException<T>) then) =
      __$$UserDefinedExceptionCopyWithImpl<T, $Res>;
  $Res call({T error});
}

/// @nodoc
class __$$UserDefinedExceptionCopyWithImpl<T extends Exception, $Res>
    extends _$NetworkExceptionCopyWithImpl<T, $Res>
    implements _$$UserDefinedExceptionCopyWith<T, $Res> {
  __$$UserDefinedExceptionCopyWithImpl(_$UserDefinedException<T> _value,
      $Res Function(_$UserDefinedException<T>) _then)
      : super(_value, (v) => _then(v as _$UserDefinedException<T>));

  @override
  _$UserDefinedException<T> get _value =>
      super._value as _$UserDefinedException<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$UserDefinedException<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$UserDefinedException<T extends Exception>
    implements UserDefinedException<T> {
  _$UserDefinedException(this.error);

  @override
  final T error;

  @override
  String toString() {
    return 'NetworkException<$T>.userDefinedException(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDefinedException<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$UserDefinedExceptionCopyWith<T, _$UserDefinedException<T>> get copyWith =>
      __$$UserDefinedExceptionCopyWithImpl<T, _$UserDefinedException<T>>(
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
    required TResult Function() otherException,
    required TResult Function() noInternetConnection,
    required TResult Function() unableToProcessData,
    required TResult Function() unexpectedError,
    required TResult Function(T error) userDefinedException,
  }) {
    return userDefinedException(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
  }) {
    return userDefinedException?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connectTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function(ResponseValue<dynamic> response)? responseException,
    TResult Function()? requestCancelled,
    TResult Function()? otherException,
    TResult Function()? noInternetConnection,
    TResult Function()? unableToProcessData,
    TResult Function()? unexpectedError,
    TResult Function(T error)? userDefinedException,
    required TResult orElse(),
  }) {
    if (userDefinedException != null) {
      return userDefinedException(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectTimeout<T> value) connectTimeout,
    required TResult Function(SendTimeout<T> value) sendTimeout,
    required TResult Function(ReceiveTimeout<T> value) receiveTimeout,
    required TResult Function(ResponseException<T> value) responseException,
    required TResult Function(RequestCancelled<T> value) requestCancelled,
    required TResult Function(OtherException<T> value) otherException,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
    required TResult Function(UnableToProcessData<T> value) unableToProcessData,
    required TResult Function(UnexpectedError<T> value) unexpectedError,
    required TResult Function(UserDefinedException<T> value)
        userDefinedException,
  }) {
    return userDefinedException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
  }) {
    return userDefinedException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectTimeout<T> value)? connectTimeout,
    TResult Function(SendTimeout<T> value)? sendTimeout,
    TResult Function(ReceiveTimeout<T> value)? receiveTimeout,
    TResult Function(ResponseException<T> value)? responseException,
    TResult Function(RequestCancelled<T> value)? requestCancelled,
    TResult Function(OtherException<T> value)? otherException,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    TResult Function(UnableToProcessData<T> value)? unableToProcessData,
    TResult Function(UnexpectedError<T> value)? unexpectedError,
    TResult Function(UserDefinedException<T> value)? userDefinedException,
    required TResult orElse(),
  }) {
    if (userDefinedException != null) {
      return userDefinedException(this);
    }
    return orElse();
  }
}

abstract class UserDefinedException<T extends Exception>
    implements NetworkException<T> {
  factory UserDefinedException(final T error) = _$UserDefinedException<T>;

  T get error;
  @JsonKey(ignore: true)
  _$$UserDefinedExceptionCopyWith<T, _$UserDefinedException<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
