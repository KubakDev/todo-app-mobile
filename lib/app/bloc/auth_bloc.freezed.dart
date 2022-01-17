// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  AuthLogin login() {
    return const AuthLogin();
  }

  AuthLogout logout() {
    return const AuthLogout();
  }

  AuthEventError error(String error) {
    return AuthEventError(
      error,
    );
  }

  AuthEventLoggedIn loggedIn(User user) {
    return AuthEventLoggedIn(
      user,
    );
  }

  AuthEventLoggedOut loggedOut() {
    return const AuthEventLoggedOut();
  }

  AuthEventLoading loading() {
    return const AuthEventLoading();
  }

  AuthEventLoadingStored loadingstored() {
    return const AuthEventLoadingStored();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() logout,
    required TResult Function(String error) error,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loading,
    required TResult Function() loadingstored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(String error)? error,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loading,
    TResult Function()? loadingstored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(String error)? error,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthEventError value) error,
    required TResult Function(AuthEventLoggedIn value) loggedIn,
    required TResult Function(AuthEventLoggedOut value) loggedOut,
    required TResult Function(AuthEventLoading value) loading,
    required TResult Function(AuthEventLoadingStored value) loadingstored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthEventError value)? error,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    TResult Function(AuthEventLoading value)? loading,
    TResult Function(AuthEventLoadingStored value)? loadingstored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthEventError value)? error,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    TResult Function(AuthEventLoading value)? loading,
    TResult Function(AuthEventLoadingStored value)? loadingstored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $AuthLoginCopyWith<$Res> {
  factory $AuthLoginCopyWith(AuthLogin value, $Res Function(AuthLogin) then) =
      _$AuthLoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthLoginCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthLoginCopyWith<$Res> {
  _$AuthLoginCopyWithImpl(AuthLogin _value, $Res Function(AuthLogin) _then)
      : super(_value, (v) => _then(v as AuthLogin));

  @override
  AuthLogin get _value => super._value as AuthLogin;
}

/// @nodoc

class _$AuthLogin implements AuthLogin {
  const _$AuthLogin();

  @override
  String toString() {
    return 'AuthEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() logout,
    required TResult Function(String error) error,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loading,
    required TResult Function() loadingstored,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(String error)? error,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loading,
    TResult Function()? loadingstored,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(String error)? error,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthEventError value) error,
    required TResult Function(AuthEventLoggedIn value) loggedIn,
    required TResult Function(AuthEventLoggedOut value) loggedOut,
    required TResult Function(AuthEventLoading value) loading,
    required TResult Function(AuthEventLoadingStored value) loadingstored,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthEventError value)? error,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    TResult Function(AuthEventLoading value)? loading,
    TResult Function(AuthEventLoadingStored value)? loadingstored,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthEventError value)? error,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    TResult Function(AuthEventLoading value)? loading,
    TResult Function(AuthEventLoadingStored value)? loadingstored,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class AuthLogin implements AuthEvent {
  const factory AuthLogin() = _$AuthLogin;
}

/// @nodoc
abstract class $AuthLogoutCopyWith<$Res> {
  factory $AuthLogoutCopyWith(
          AuthLogout value, $Res Function(AuthLogout) then) =
      _$AuthLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthLogoutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthLogoutCopyWith<$Res> {
  _$AuthLogoutCopyWithImpl(AuthLogout _value, $Res Function(AuthLogout) _then)
      : super(_value, (v) => _then(v as AuthLogout));

  @override
  AuthLogout get _value => super._value as AuthLogout;
}

/// @nodoc

class _$AuthLogout implements AuthLogout {
  const _$AuthLogout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() logout,
    required TResult Function(String error) error,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loading,
    required TResult Function() loadingstored,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(String error)? error,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loading,
    TResult Function()? loadingstored,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(String error)? error,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthEventError value) error,
    required TResult Function(AuthEventLoggedIn value) loggedIn,
    required TResult Function(AuthEventLoggedOut value) loggedOut,
    required TResult Function(AuthEventLoading value) loading,
    required TResult Function(AuthEventLoadingStored value) loadingstored,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthEventError value)? error,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    TResult Function(AuthEventLoading value)? loading,
    TResult Function(AuthEventLoadingStored value)? loadingstored,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthEventError value)? error,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    TResult Function(AuthEventLoading value)? loading,
    TResult Function(AuthEventLoadingStored value)? loadingstored,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AuthLogout implements AuthEvent {
  const factory AuthLogout() = _$AuthLogout;
}

/// @nodoc
abstract class $AuthEventErrorCopyWith<$Res> {
  factory $AuthEventErrorCopyWith(
          AuthEventError value, $Res Function(AuthEventError) then) =
      _$AuthEventErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$AuthEventErrorCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventErrorCopyWith<$Res> {
  _$AuthEventErrorCopyWithImpl(
      AuthEventError _value, $Res Function(AuthEventError) _then)
      : super(_value, (v) => _then(v as AuthEventError));

  @override
  AuthEventError get _value => super._value as AuthEventError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(AuthEventError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthEventError implements AuthEventError {
  const _$AuthEventError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthEvent.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthEventError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $AuthEventErrorCopyWith<AuthEventError> get copyWith =>
      _$AuthEventErrorCopyWithImpl<AuthEventError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() logout,
    required TResult Function(String error) error,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loading,
    required TResult Function() loadingstored,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(String error)? error,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loading,
    TResult Function()? loadingstored,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(String error)? error,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthEventError value) error,
    required TResult Function(AuthEventLoggedIn value) loggedIn,
    required TResult Function(AuthEventLoggedOut value) loggedOut,
    required TResult Function(AuthEventLoading value) loading,
    required TResult Function(AuthEventLoadingStored value) loadingstored,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthEventError value)? error,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    TResult Function(AuthEventLoading value)? loading,
    TResult Function(AuthEventLoadingStored value)? loadingstored,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthEventError value)? error,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    TResult Function(AuthEventLoading value)? loading,
    TResult Function(AuthEventLoadingStored value)? loadingstored,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthEventError implements AuthEvent {
  const factory AuthEventError(String error) = _$AuthEventError;

  String get error;
  @JsonKey(ignore: true)
  $AuthEventErrorCopyWith<AuthEventError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventLoggedInCopyWith<$Res> {
  factory $AuthEventLoggedInCopyWith(
          AuthEventLoggedIn value, $Res Function(AuthEventLoggedIn) then) =
      _$AuthEventLoggedInCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$AuthEventLoggedInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoggedInCopyWith<$Res> {
  _$AuthEventLoggedInCopyWithImpl(
      AuthEventLoggedIn _value, $Res Function(AuthEventLoggedIn) _then)
      : super(_value, (v) => _then(v as AuthEventLoggedIn));

  @override
  AuthEventLoggedIn get _value => super._value as AuthEventLoggedIn;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthEventLoggedIn(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthEventLoggedIn implements AuthEventLoggedIn {
  const _$AuthEventLoggedIn(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthEvent.loggedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthEventLoggedIn &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthEventLoggedInCopyWith<AuthEventLoggedIn> get copyWith =>
      _$AuthEventLoggedInCopyWithImpl<AuthEventLoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() logout,
    required TResult Function(String error) error,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loading,
    required TResult Function() loadingstored,
  }) {
    return loggedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(String error)? error,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loading,
    TResult Function()? loadingstored,
  }) {
    return loggedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(String error)? error,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthEventError value) error,
    required TResult Function(AuthEventLoggedIn value) loggedIn,
    required TResult Function(AuthEventLoggedOut value) loggedOut,
    required TResult Function(AuthEventLoading value) loading,
    required TResult Function(AuthEventLoadingStored value) loadingstored,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthEventError value)? error,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    TResult Function(AuthEventLoading value)? loading,
    TResult Function(AuthEventLoadingStored value)? loadingstored,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthEventError value)? error,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    TResult Function(AuthEventLoading value)? loading,
    TResult Function(AuthEventLoadingStored value)? loadingstored,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoggedIn implements AuthEvent {
  const factory AuthEventLoggedIn(User user) = _$AuthEventLoggedIn;

  User get user;
  @JsonKey(ignore: true)
  $AuthEventLoggedInCopyWith<AuthEventLoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventLoggedOutCopyWith<$Res> {
  factory $AuthEventLoggedOutCopyWith(
          AuthEventLoggedOut value, $Res Function(AuthEventLoggedOut) then) =
      _$AuthEventLoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventLoggedOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoggedOutCopyWith<$Res> {
  _$AuthEventLoggedOutCopyWithImpl(
      AuthEventLoggedOut _value, $Res Function(AuthEventLoggedOut) _then)
      : super(_value, (v) => _then(v as AuthEventLoggedOut));

  @override
  AuthEventLoggedOut get _value => super._value as AuthEventLoggedOut;
}

/// @nodoc

class _$AuthEventLoggedOut implements AuthEventLoggedOut {
  const _$AuthEventLoggedOut();

  @override
  String toString() {
    return 'AuthEvent.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthEventLoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() logout,
    required TResult Function(String error) error,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loading,
    required TResult Function() loadingstored,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(String error)? error,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loading,
    TResult Function()? loadingstored,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(String error)? error,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthEventError value) error,
    required TResult Function(AuthEventLoggedIn value) loggedIn,
    required TResult Function(AuthEventLoggedOut value) loggedOut,
    required TResult Function(AuthEventLoading value) loading,
    required TResult Function(AuthEventLoadingStored value) loadingstored,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthEventError value)? error,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    TResult Function(AuthEventLoading value)? loading,
    TResult Function(AuthEventLoadingStored value)? loadingstored,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthEventError value)? error,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    TResult Function(AuthEventLoading value)? loading,
    TResult Function(AuthEventLoadingStored value)? loadingstored,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoggedOut implements AuthEvent {
  const factory AuthEventLoggedOut() = _$AuthEventLoggedOut;
}

/// @nodoc
abstract class $AuthEventLoadingCopyWith<$Res> {
  factory $AuthEventLoadingCopyWith(
          AuthEventLoading value, $Res Function(AuthEventLoading) then) =
      _$AuthEventLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventLoadingCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoadingCopyWith<$Res> {
  _$AuthEventLoadingCopyWithImpl(
      AuthEventLoading _value, $Res Function(AuthEventLoading) _then)
      : super(_value, (v) => _then(v as AuthEventLoading));

  @override
  AuthEventLoading get _value => super._value as AuthEventLoading;
}

/// @nodoc

class _$AuthEventLoading implements AuthEventLoading {
  const _$AuthEventLoading();

  @override
  String toString() {
    return 'AuthEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthEventLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() logout,
    required TResult Function(String error) error,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loading,
    required TResult Function() loadingstored,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(String error)? error,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loading,
    TResult Function()? loadingstored,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(String error)? error,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthEventError value) error,
    required TResult Function(AuthEventLoggedIn value) loggedIn,
    required TResult Function(AuthEventLoggedOut value) loggedOut,
    required TResult Function(AuthEventLoading value) loading,
    required TResult Function(AuthEventLoadingStored value) loadingstored,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthEventError value)? error,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    TResult Function(AuthEventLoading value)? loading,
    TResult Function(AuthEventLoadingStored value)? loadingstored,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthEventError value)? error,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    TResult Function(AuthEventLoading value)? loading,
    TResult Function(AuthEventLoadingStored value)? loadingstored,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoading implements AuthEvent {
  const factory AuthEventLoading() = _$AuthEventLoading;
}

/// @nodoc
abstract class $AuthEventLoadingStoredCopyWith<$Res> {
  factory $AuthEventLoadingStoredCopyWith(AuthEventLoadingStored value,
          $Res Function(AuthEventLoadingStored) then) =
      _$AuthEventLoadingStoredCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventLoadingStoredCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoadingStoredCopyWith<$Res> {
  _$AuthEventLoadingStoredCopyWithImpl(AuthEventLoadingStored _value,
      $Res Function(AuthEventLoadingStored) _then)
      : super(_value, (v) => _then(v as AuthEventLoadingStored));

  @override
  AuthEventLoadingStored get _value => super._value as AuthEventLoadingStored;
}

/// @nodoc

class _$AuthEventLoadingStored implements AuthEventLoadingStored {
  const _$AuthEventLoadingStored();

  @override
  String toString() {
    return 'AuthEvent.loadingstored()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthEventLoadingStored);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() logout,
    required TResult Function(String error) error,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loading,
    required TResult Function() loadingstored,
  }) {
    return loadingstored();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(String error)? error,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loading,
    TResult Function()? loadingstored,
  }) {
    return loadingstored?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(String error)? error,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    required TResult orElse(),
  }) {
    if (loadingstored != null) {
      return loadingstored();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthEventError value) error,
    required TResult Function(AuthEventLoggedIn value) loggedIn,
    required TResult Function(AuthEventLoggedOut value) loggedOut,
    required TResult Function(AuthEventLoading value) loading,
    required TResult Function(AuthEventLoadingStored value) loadingstored,
  }) {
    return loadingstored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthEventError value)? error,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    TResult Function(AuthEventLoading value)? loading,
    TResult Function(AuthEventLoadingStored value)? loadingstored,
  }) {
    return loadingstored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthEventError value)? error,
    TResult Function(AuthEventLoggedIn value)? loggedIn,
    TResult Function(AuthEventLoggedOut value)? loggedOut,
    TResult Function(AuthEventLoading value)? loading,
    TResult Function(AuthEventLoadingStored value)? loadingstored,
    required TResult orElse(),
  }) {
    if (loadingstored != null) {
      return loadingstored(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoadingStored implements AuthEvent {
  const factory AuthEventLoadingStored() = _$AuthEventLoadingStored;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthNotLoggedIn notLoggedIn() {
    return const AuthNotLoggedIn();
  }

  AuthLoading loading() {
    return const AuthLoading();
  }

  AuthLoadingStored loadingstored() {
    return const AuthLoadingStored();
  }

  AuthError error(String? error) {
    return AuthError(
      error,
    );
  }

  AuthLoggedIn loggedIn(User user) {
    return AuthLoggedIn(
      user,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function() loading,
    required TResult Function() loadingstored,
    required TResult Function(String? error) error,
    required TResult Function(User user) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    TResult Function(String? error)? error,
    TResult Function(User user)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    TResult Function(String? error)? error,
    TResult Function(User user)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthNotLoggedIn value) notLoggedIn,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthLoadingStored value) loadingstored,
    required TResult Function(AuthError value) error,
    required TResult Function(AuthLoggedIn value) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthNotLoggedIn value)? notLoggedIn,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthLoadingStored value)? loadingstored,
    TResult Function(AuthError value)? error,
    TResult Function(AuthLoggedIn value)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthNotLoggedIn value)? notLoggedIn,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthLoadingStored value)? loadingstored,
    TResult Function(AuthError value)? error,
    TResult Function(AuthLoggedIn value)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthNotLoggedInCopyWith<$Res> {
  factory $AuthNotLoggedInCopyWith(
          AuthNotLoggedIn value, $Res Function(AuthNotLoggedIn) then) =
      _$AuthNotLoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthNotLoggedInCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthNotLoggedInCopyWith<$Res> {
  _$AuthNotLoggedInCopyWithImpl(
      AuthNotLoggedIn _value, $Res Function(AuthNotLoggedIn) _then)
      : super(_value, (v) => _then(v as AuthNotLoggedIn));

  @override
  AuthNotLoggedIn get _value => super._value as AuthNotLoggedIn;
}

/// @nodoc

class _$AuthNotLoggedIn implements AuthNotLoggedIn {
  const _$AuthNotLoggedIn();

  @override
  String toString() {
    return 'AuthState.notLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthNotLoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function() loading,
    required TResult Function() loadingstored,
    required TResult Function(String? error) error,
    required TResult Function(User user) loggedIn,
  }) {
    return notLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    TResult Function(String? error)? error,
    TResult Function(User user)? loggedIn,
  }) {
    return notLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    TResult Function(String? error)? error,
    TResult Function(User user)? loggedIn,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthNotLoggedIn value) notLoggedIn,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthLoadingStored value) loadingstored,
    required TResult Function(AuthError value) error,
    required TResult Function(AuthLoggedIn value) loggedIn,
  }) {
    return notLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthNotLoggedIn value)? notLoggedIn,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthLoadingStored value)? loadingstored,
    TResult Function(AuthError value)? error,
    TResult Function(AuthLoggedIn value)? loggedIn,
  }) {
    return notLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthNotLoggedIn value)? notLoggedIn,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthLoadingStored value)? loadingstored,
    TResult Function(AuthError value)? error,
    TResult Function(AuthLoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn(this);
    }
    return orElse();
  }
}

abstract class AuthNotLoggedIn implements AuthState {
  const factory AuthNotLoggedIn() = _$AuthNotLoggedIn;
}

/// @nodoc
abstract class $AuthLoadingCopyWith<$Res> {
  factory $AuthLoadingCopyWith(
          AuthLoading value, $Res Function(AuthLoading) then) =
      _$AuthLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthLoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthLoadingCopyWith<$Res> {
  _$AuthLoadingCopyWithImpl(
      AuthLoading _value, $Res Function(AuthLoading) _then)
      : super(_value, (v) => _then(v as AuthLoading));

  @override
  AuthLoading get _value => super._value as AuthLoading;
}

/// @nodoc

class _$AuthLoading implements AuthLoading {
  const _$AuthLoading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function() loading,
    required TResult Function() loadingstored,
    required TResult Function(String? error) error,
    required TResult Function(User user) loggedIn,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    TResult Function(String? error)? error,
    TResult Function(User user)? loggedIn,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    TResult Function(String? error)? error,
    TResult Function(User user)? loggedIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthNotLoggedIn value) notLoggedIn,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthLoadingStored value) loadingstored,
    required TResult Function(AuthError value) error,
    required TResult Function(AuthLoggedIn value) loggedIn,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthNotLoggedIn value)? notLoggedIn,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthLoadingStored value)? loadingstored,
    TResult Function(AuthError value)? error,
    TResult Function(AuthLoggedIn value)? loggedIn,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthNotLoggedIn value)? notLoggedIn,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthLoadingStored value)? loadingstored,
    TResult Function(AuthError value)? error,
    TResult Function(AuthLoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoading implements AuthState {
  const factory AuthLoading() = _$AuthLoading;
}

/// @nodoc
abstract class $AuthLoadingStoredCopyWith<$Res> {
  factory $AuthLoadingStoredCopyWith(
          AuthLoadingStored value, $Res Function(AuthLoadingStored) then) =
      _$AuthLoadingStoredCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthLoadingStoredCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthLoadingStoredCopyWith<$Res> {
  _$AuthLoadingStoredCopyWithImpl(
      AuthLoadingStored _value, $Res Function(AuthLoadingStored) _then)
      : super(_value, (v) => _then(v as AuthLoadingStored));

  @override
  AuthLoadingStored get _value => super._value as AuthLoadingStored;
}

/// @nodoc

class _$AuthLoadingStored implements AuthLoadingStored {
  const _$AuthLoadingStored();

  @override
  String toString() {
    return 'AuthState.loadingstored()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthLoadingStored);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function() loading,
    required TResult Function() loadingstored,
    required TResult Function(String? error) error,
    required TResult Function(User user) loggedIn,
  }) {
    return loadingstored();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    TResult Function(String? error)? error,
    TResult Function(User user)? loggedIn,
  }) {
    return loadingstored?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    TResult Function(String? error)? error,
    TResult Function(User user)? loggedIn,
    required TResult orElse(),
  }) {
    if (loadingstored != null) {
      return loadingstored();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthNotLoggedIn value) notLoggedIn,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthLoadingStored value) loadingstored,
    required TResult Function(AuthError value) error,
    required TResult Function(AuthLoggedIn value) loggedIn,
  }) {
    return loadingstored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthNotLoggedIn value)? notLoggedIn,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthLoadingStored value)? loadingstored,
    TResult Function(AuthError value)? error,
    TResult Function(AuthLoggedIn value)? loggedIn,
  }) {
    return loadingstored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthNotLoggedIn value)? notLoggedIn,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthLoadingStored value)? loadingstored,
    TResult Function(AuthError value)? error,
    TResult Function(AuthLoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loadingstored != null) {
      return loadingstored(this);
    }
    return orElse();
  }
}

abstract class AuthLoadingStored implements AuthState {
  const factory AuthLoadingStored() = _$AuthLoadingStored;
}

/// @nodoc
abstract class $AuthErrorCopyWith<$Res> {
  factory $AuthErrorCopyWith(AuthError value, $Res Function(AuthError) then) =
      _$AuthErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class _$AuthErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthErrorCopyWith<$Res> {
  _$AuthErrorCopyWithImpl(AuthError _value, $Res Function(AuthError) _then)
      : super(_value, (v) => _then(v as AuthError));

  @override
  AuthError get _value => super._value as AuthError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(AuthError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthError implements AuthError {
  const _$AuthError(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $AuthErrorCopyWith<AuthError> get copyWith =>
      _$AuthErrorCopyWithImpl<AuthError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function() loading,
    required TResult Function() loadingstored,
    required TResult Function(String? error) error,
    required TResult Function(User user) loggedIn,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    TResult Function(String? error)? error,
    TResult Function(User user)? loggedIn,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    TResult Function(String? error)? error,
    TResult Function(User user)? loggedIn,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthNotLoggedIn value) notLoggedIn,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthLoadingStored value) loadingstored,
    required TResult Function(AuthError value) error,
    required TResult Function(AuthLoggedIn value) loggedIn,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthNotLoggedIn value)? notLoggedIn,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthLoadingStored value)? loadingstored,
    TResult Function(AuthError value)? error,
    TResult Function(AuthLoggedIn value)? loggedIn,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthNotLoggedIn value)? notLoggedIn,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthLoadingStored value)? loadingstored,
    TResult Function(AuthError value)? error,
    TResult Function(AuthLoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthError implements AuthState {
  const factory AuthError(String? error) = _$AuthError;

  String? get error;
  @JsonKey(ignore: true)
  $AuthErrorCopyWith<AuthError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLoggedInCopyWith<$Res> {
  factory $AuthLoggedInCopyWith(
          AuthLoggedIn value, $Res Function(AuthLoggedIn) then) =
      _$AuthLoggedInCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$AuthLoggedInCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthLoggedInCopyWith<$Res> {
  _$AuthLoggedInCopyWithImpl(
      AuthLoggedIn _value, $Res Function(AuthLoggedIn) _then)
      : super(_value, (v) => _then(v as AuthLoggedIn));

  @override
  AuthLoggedIn get _value => super._value as AuthLoggedIn;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthLoggedIn(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthLoggedIn implements AuthLoggedIn {
  const _$AuthLoggedIn(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.loggedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthLoggedIn &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthLoggedInCopyWith<AuthLoggedIn> get copyWith =>
      _$AuthLoggedInCopyWithImpl<AuthLoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function() loading,
    required TResult Function() loadingstored,
    required TResult Function(String? error) error,
    required TResult Function(User user) loggedIn,
  }) {
    return loggedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    TResult Function(String? error)? error,
    TResult Function(User user)? loggedIn,
  }) {
    return loggedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function()? loadingstored,
    TResult Function(String? error)? error,
    TResult Function(User user)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthNotLoggedIn value) notLoggedIn,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthLoadingStored value) loadingstored,
    required TResult Function(AuthError value) error,
    required TResult Function(AuthLoggedIn value) loggedIn,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthNotLoggedIn value)? notLoggedIn,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthLoadingStored value)? loadingstored,
    TResult Function(AuthError value)? error,
    TResult Function(AuthLoggedIn value)? loggedIn,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthNotLoggedIn value)? notLoggedIn,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthLoadingStored value)? loadingstored,
    TResult Function(AuthError value)? error,
    TResult Function(AuthLoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class AuthLoggedIn implements AuthState {
  const factory AuthLoggedIn(User user) = _$AuthLoggedIn;

  User get user;
  @JsonKey(ignore: true)
  $AuthLoggedInCopyWith<AuthLoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}
