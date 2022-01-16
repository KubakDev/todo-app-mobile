part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login() = AuthLogin;
  const factory AuthEvent.logout() = AuthLogout;
  const factory AuthEvent.error(String error) = AuthEventError;
  const factory AuthEvent.loggedIn(User user) = AuthEventLoggedIn;
  const factory AuthEvent.loggedOut() = AuthEventLoggedOut;
  const factory AuthEvent.loading() = AuthEventLoading;
  const factory AuthEvent.loadingstored() = AuthEventLoadingStored;
}
