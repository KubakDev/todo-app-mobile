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
      if (event.authRepoState is AuthRepoloading) {
        emit(const AuthLoading());
      } else if (event.authRepoState is AuthRepohasError) {
        emit(AuthError((event.authRepoState as AuthRepohasError).error));
      } else if (event.authRepoState is AuthRepologgedIn) {
        emit(
          AuthLoggedIn((event.authRepoState as AuthRepologgedIn).user),
        );
      } else if (event.authRepoState is AuthRepologgedOut) {
        emit(const AuthNotLoggedIn());
      } else if (event is AuthRepoRefreshingToken) {
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
