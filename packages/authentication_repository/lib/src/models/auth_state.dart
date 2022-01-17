import 'package:authentication_repository/src/models/user.dart';
import 'package:equatable/equatable.dart';

class AuthRepoState extends Equatable {
  const AuthRepoState();

  @override
  List<Object> get props => [];
}

class AuthStateloading extends AuthRepoState {}

class AuthStateloadingstored extends AuthRepoState {}

class AuthStateloggedIn extends AuthRepoState {
  const AuthStateloggedIn(this.user);

  final User user;

  @override
  List<Object> get props => [user];
}

class AuthStateloggedOut extends AuthRepoState {}

class AuthStatehasError extends AuthRepoState {
  const AuthStatehasError(this.error);

  final String error;

  @override
  List<Object> get props => [error];
}
