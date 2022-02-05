part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login() = AuthLogin;
  const factory AuthEvent.logout() = AuthLogout;
  const factory AuthEvent.repoStateChanged(AuthRepoState authRepoState) =
      AuthRepoStateChanged;
  const factory AuthEvent.refreshToken() = AuthEventRefreshToken;
}
