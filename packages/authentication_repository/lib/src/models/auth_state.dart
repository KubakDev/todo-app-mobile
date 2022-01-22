import 'package:authentication_repository/src/models/user.dart';
import 'package:equatable/equatable.dart';

class AuthRepoState extends Equatable {
  const AuthRepoState();

  @override
  List<Object> get props => [];
}

class AuthRepoloading extends AuthRepoState {}

class AuthRepoRefreshingToken extends AuthRepoState {}

class AuthRepologgedIn extends AuthRepoState {
  const AuthRepologgedIn(this.user);

  final User user;

  @override
  List<Object> get props => [user];
}

class AuthRepologgedOut extends AuthRepoState {}

class AuthRepohasError extends AuthRepoState {
  const AuthRepohasError(this.error);

  final String error;

  @override
  List<Object> get props => [error];
}
