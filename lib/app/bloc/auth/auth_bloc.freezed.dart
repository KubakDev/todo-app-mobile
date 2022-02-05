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

  AuthRepoStateChanged repoStateChanged(AuthRepoState authRepoState) {
    return AuthRepoStateChanged(
      authRepoState,
    );
  }

  AuthEventRefreshToken refreshToken() {
    return const AuthEventRefreshToken();
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
    required TResult Function(AuthRepoState authRepoState) repoStateChanged,
    required TResult Function() refreshToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(AuthRepoState authRepoState)? repoStateChanged,
    TResult Function()? refreshToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(AuthRepoState authRepoState)? repoStateChanged,
    TResult Function()? refreshToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthRepoStateChanged value) repoStateChanged,
    required TResult Function(AuthEventRefreshToken value) refreshToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRepoStateChanged value)? repoStateChanged,
    TResult Function(AuthEventRefreshToken value)? refreshToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRepoStateChanged value)? repoStateChanged,
    TResult Function(AuthEventRefreshToken value)? refreshToken,
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
    required TResult Function(AuthRepoState authRepoState) repoStateChanged,
    required TResult Function() refreshToken,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(AuthRepoState authRepoState)? repoStateChanged,
    TResult Function()? refreshToken,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(AuthRepoState authRepoState)? repoStateChanged,
    TResult Function()? refreshToken,
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
    required TResult Function(AuthRepoStateChanged value) repoStateChanged,
    required TResult Function(AuthEventRefreshToken value) refreshToken,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRepoStateChanged value)? repoStateChanged,
    TResult Function(AuthEventRefreshToken value)? refreshToken,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRepoStateChanged value)? repoStateChanged,
    TResult Function(AuthEventRefreshToken value)? refreshToken,
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
    required TResult Function(AuthRepoState authRepoState) repoStateChanged,
    required TResult Function() refreshToken,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(AuthRepoState authRepoState)? repoStateChanged,
    TResult Function()? refreshToken,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(AuthRepoState authRepoState)? repoStateChanged,
    TResult Function()? refreshToken,
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
    required TResult Function(AuthRepoStateChanged value) repoStateChanged,
    required TResult Function(AuthEventRefreshToken value) refreshToken,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRepoStateChanged value)? repoStateChanged,
    TResult Function(AuthEventRefreshToken value)? refreshToken,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRepoStateChanged value)? repoStateChanged,
    TResult Function(AuthEventRefreshToken value)? refreshToken,
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
abstract class $AuthRepoStateChangedCopyWith<$Res> {
  factory $AuthRepoStateChangedCopyWith(AuthRepoStateChanged value,
          $Res Function(AuthRepoStateChanged) then) =
      _$AuthRepoStateChangedCopyWithImpl<$Res>;
  $Res call({AuthRepoState authRepoState});
}

/// @nodoc
class _$AuthRepoStateChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthRepoStateChangedCopyWith<$Res> {
  _$AuthRepoStateChangedCopyWithImpl(
      AuthRepoStateChanged _value, $Res Function(AuthRepoStateChanged) _then)
      : super(_value, (v) => _then(v as AuthRepoStateChanged));

  @override
  AuthRepoStateChanged get _value => super._value as AuthRepoStateChanged;

  @override
  $Res call({
    Object? authRepoState = freezed,
  }) {
    return _then(AuthRepoStateChanged(
      authRepoState == freezed
          ? _value.authRepoState
          : authRepoState // ignore: cast_nullable_to_non_nullable
              as AuthRepoState,
    ));
  }
}

/// @nodoc

class _$AuthRepoStateChanged implements AuthRepoStateChanged {
  const _$AuthRepoStateChanged(this.authRepoState);

  @override
  final AuthRepoState authRepoState;

  @override
  String toString() {
    return 'AuthEvent.repoStateChanged(authRepoState: $authRepoState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthRepoStateChanged &&
            const DeepCollectionEquality()
                .equals(other.authRepoState, authRepoState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(authRepoState));

  @JsonKey(ignore: true)
  @override
  $AuthRepoStateChangedCopyWith<AuthRepoStateChanged> get copyWith =>
      _$AuthRepoStateChangedCopyWithImpl<AuthRepoStateChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() logout,
    required TResult Function(AuthRepoState authRepoState) repoStateChanged,
    required TResult Function() refreshToken,
  }) {
    return repoStateChanged(authRepoState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(AuthRepoState authRepoState)? repoStateChanged,
    TResult Function()? refreshToken,
  }) {
    return repoStateChanged?.call(authRepoState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(AuthRepoState authRepoState)? repoStateChanged,
    TResult Function()? refreshToken,
    required TResult orElse(),
  }) {
    if (repoStateChanged != null) {
      return repoStateChanged(authRepoState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthRepoStateChanged value) repoStateChanged,
    required TResult Function(AuthEventRefreshToken value) refreshToken,
  }) {
    return repoStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRepoStateChanged value)? repoStateChanged,
    TResult Function(AuthEventRefreshToken value)? refreshToken,
  }) {
    return repoStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRepoStateChanged value)? repoStateChanged,
    TResult Function(AuthEventRefreshToken value)? refreshToken,
    required TResult orElse(),
  }) {
    if (repoStateChanged != null) {
      return repoStateChanged(this);
    }
    return orElse();
  }
}

abstract class AuthRepoStateChanged implements AuthEvent {
  const factory AuthRepoStateChanged(AuthRepoState authRepoState) =
      _$AuthRepoStateChanged;

  AuthRepoState get authRepoState;
  @JsonKey(ignore: true)
  $AuthRepoStateChangedCopyWith<AuthRepoStateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventRefreshTokenCopyWith<$Res> {
  factory $AuthEventRefreshTokenCopyWith(AuthEventRefreshToken value,
          $Res Function(AuthEventRefreshToken) then) =
      _$AuthEventRefreshTokenCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventRefreshTokenCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventRefreshTokenCopyWith<$Res> {
  _$AuthEventRefreshTokenCopyWithImpl(
      AuthEventRefreshToken _value, $Res Function(AuthEventRefreshToken) _then)
      : super(_value, (v) => _then(v as AuthEventRefreshToken));

  @override
  AuthEventRefreshToken get _value => super._value as AuthEventRefreshToken;
}

/// @nodoc

class _$AuthEventRefreshToken implements AuthEventRefreshToken {
  const _$AuthEventRefreshToken();

  @override
  String toString() {
    return 'AuthEvent.refreshToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthEventRefreshToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() logout,
    required TResult Function(AuthRepoState authRepoState) repoStateChanged,
    required TResult Function() refreshToken,
  }) {
    return refreshToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(AuthRepoState authRepoState)? repoStateChanged,
    TResult Function()? refreshToken,
  }) {
    return refreshToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? logout,
    TResult Function(AuthRepoState authRepoState)? repoStateChanged,
    TResult Function()? refreshToken,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthRepoStateChanged value) repoStateChanged,
    required TResult Function(AuthEventRefreshToken value) refreshToken,
  }) {
    return refreshToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRepoStateChanged value)? repoStateChanged,
    TResult Function(AuthEventRefreshToken value)? refreshToken,
  }) {
    return refreshToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthRepoStateChanged value)? repoStateChanged,
    TResult Function(AuthEventRefreshToken value)? refreshToken,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken(this);
    }
    return orElse();
  }
}

abstract class AuthEventRefreshToken implements AuthEvent {
  const factory AuthEventRefreshToken() = _$AuthEventRefreshToken;
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

  AuthRefreshingToken refreshingToken() {
    return const AuthRefreshingToken();
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
    required TResult Function() refreshingToken,
    required TResult Function(String? error) error,
    required TResult Function(User user) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function()? refreshingToken,
    TResult Function(String? error)? error,
    TResult Function(User user)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function()? refreshingToken,
    TResult Function(String? error)? error,
    TResult Function(User user)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthNotLoggedIn value) notLoggedIn,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthRefreshingToken value) refreshingToken,
    required TResult Function(AuthError value) error,
    required TResult Function(AuthLoggedIn value) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthNotLoggedIn value)? notLoggedIn,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthRefreshingToken value)? refreshingToken,
    TResult Function(AuthError value)? error,
    TResult Function(AuthLoggedIn value)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthNotLoggedIn value)? notLoggedIn,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthRefreshingToken value)? refreshingToken,
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
    required TResult Function() refreshingToken,
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
    TResult Function()? refreshingToken,
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
    TResult Function()? refreshingToken,
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
    required TResult Function(AuthRefreshingToken value) refreshingToken,
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
    TResult Function(AuthRefreshingToken value)? refreshingToken,
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
    TResult Function(AuthRefreshingToken value)? refreshingToken,
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
    required TResult Function() refreshingToken,
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
    TResult Function()? refreshingToken,
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
    TResult Function()? refreshingToken,
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
    required TResult Function(AuthRefreshingToken value) refreshingToken,
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
    TResult Function(AuthRefreshingToken value)? refreshingToken,
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
    TResult Function(AuthRefreshingToken value)? refreshingToken,
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
abstract class $AuthRefreshingTokenCopyWith<$Res> {
  factory $AuthRefreshingTokenCopyWith(
          AuthRefreshingToken value, $Res Function(AuthRefreshingToken) then) =
      _$AuthRefreshingTokenCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthRefreshingTokenCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthRefreshingTokenCopyWith<$Res> {
  _$AuthRefreshingTokenCopyWithImpl(
      AuthRefreshingToken _value, $Res Function(AuthRefreshingToken) _then)
      : super(_value, (v) => _then(v as AuthRefreshingToken));

  @override
  AuthRefreshingToken get _value => super._value as AuthRefreshingToken;
}

/// @nodoc

class _$AuthRefreshingToken implements AuthRefreshingToken {
  const _$AuthRefreshingToken();

  @override
  String toString() {
    return 'AuthState.refreshingToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthRefreshingToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function() loading,
    required TResult Function() refreshingToken,
    required TResult Function(String? error) error,
    required TResult Function(User user) loggedIn,
  }) {
    return refreshingToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function()? refreshingToken,
    TResult Function(String? error)? error,
    TResult Function(User user)? loggedIn,
  }) {
    return refreshingToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? loading,
    TResult Function()? refreshingToken,
    TResult Function(String? error)? error,
    TResult Function(User user)? loggedIn,
    required TResult orElse(),
  }) {
    if (refreshingToken != null) {
      return refreshingToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthNotLoggedIn value) notLoggedIn,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthRefreshingToken value) refreshingToken,
    required TResult Function(AuthError value) error,
    required TResult Function(AuthLoggedIn value) loggedIn,
  }) {
    return refreshingToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthNotLoggedIn value)? notLoggedIn,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthRefreshingToken value)? refreshingToken,
    TResult Function(AuthError value)? error,
    TResult Function(AuthLoggedIn value)? loggedIn,
  }) {
    return refreshingToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthNotLoggedIn value)? notLoggedIn,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthRefreshingToken value)? refreshingToken,
    TResult Function(AuthError value)? error,
    TResult Function(AuthLoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (refreshingToken != null) {
      return refreshingToken(this);
    }
    return orElse();
  }
}

abstract class AuthRefreshingToken implements AuthState {
  const factory AuthRefreshingToken() = _$AuthRefreshingToken;
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
    required TResult Function() refreshingToken,
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
    TResult Function()? refreshingToken,
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
    TResult Function()? refreshingToken,
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
    required TResult Function(AuthRefreshingToken value) refreshingToken,
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
    TResult Function(AuthRefreshingToken value)? refreshingToken,
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
    TResult Function(AuthRefreshingToken value)? refreshingToken,
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
    required TResult Function() refreshingToken,
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
    TResult Function()? refreshingToken,
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
    TResult Function()? refreshingToken,
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
    required TResult Function(AuthRefreshingToken value) refreshingToken,
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
    TResult Function(AuthRefreshingToken value)? refreshingToken,
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
    TResult Function(AuthRefreshingToken value)? refreshingToken,
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
