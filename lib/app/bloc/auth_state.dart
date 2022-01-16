part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.notLoggedIn() = AuthNotLoggedIn;
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.loadingstored() = AuthLoadingStored;
  const factory AuthState.error(String? error) = AuthError;
  const factory AuthState.loggedIn(User user) = AuthLoggedIn;
}
