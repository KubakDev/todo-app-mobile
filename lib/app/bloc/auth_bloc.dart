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
      if (event is AuthStateloading) {
        add(const AuthEvent.loading());
      } else if (event is AuthStatehasError) {
        add(AuthEvent.error(event.error));
      } else if (event is AuthStateloggedIn) {
        add(AuthEvent.loggedIn(event.user));
      } else if (event is AuthStateloggedOut) {
        add(const AuthEvent.loggedOut());
      } else if (event is AuthStateloadingstored) {
        add(const AuthEvent.loadingstored());
      }
    });
    on<AuthLogin>((event, emit) {
      authRepo.loginAction();
    });
    on<AuthLogout>((event, emit) {
      authRepo.logoutAction();
    });
    on<AuthEventError>((event, emit) {
      emit(AuthError(event.error));
    });
    on<AuthEventLoading>((event, emit) {
      emit(const AuthState.loading());
    });
    on<AuthEventLoggedIn>((event, emit) {
      emit(AuthState.loggedIn(event.user));
    });
    on<AuthEventLoggedOut>((event, emit) {
      emit(const AuthState.notLoggedIn());
    });
    on<AuthEventLoadingStored>((event, emit) {
      emit(const AuthState.loadingstored());
    });
  }
  final AuthenticationRepository authRepo;
  late final StreamSubscription authStatus;

  @override
  Future<void> close() {
    authStatus.cancel();
    return super.close();
  }
}
