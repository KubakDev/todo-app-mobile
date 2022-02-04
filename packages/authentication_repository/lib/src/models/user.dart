import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User(this.name, this.email, this.pictureUrl);
  final String name;
  final String email;
  final String pictureUrl;

  @override
  List<Object> get props => [name, email, pictureUrl];
}
