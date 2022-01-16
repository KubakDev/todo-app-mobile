import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User(this.name);
  final String name;

  @override
  List<Object> get props => [name];
}
