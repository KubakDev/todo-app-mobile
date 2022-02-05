import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.authRepo) : super(const AuthNotLoggedIn()) {
    authRepo.initAction();
    authStatus = authRepo.status.listen((event) {
      add(AuthRepoStateChanged(event));
    });

    on<AuthLogin>((_, __) => authRepo.loginAction());
    on<AuthLogout>((_, __) => authRepo.logoutAction());
    on<AuthEventRefreshToken>((_, __) => authRepo.initAction());
    on<AuthRepoStateChanged>((event, emit) {
      final authS = event.authRepoState;
      if (authS is AuthRepoloading) {
        emit(const AuthLoading());
      } else if (authS is AuthRepohasError) {
        emit(AuthError(authS.error));
      } else if (authS is AuthRepologgedIn) {
        emit(
          AuthLoggedIn(authS.user),
        );
      } else if (authS is AuthRepologgedOut) {
        emit(const AuthNotLoggedIn());
      } else if (authS is AuthRepoRefreshingToken) {
        emit(const AuthRefreshingToken());
      }
    });
  }

  final AuthenticationRepository authRepo;
  late final StreamSubscription authStatus;

  @override
  Future<void> close() {
    authStatus.cancel();
    return super.close();
  }

  bool get isLoggedIn => state is AuthLoggedIn;
}
