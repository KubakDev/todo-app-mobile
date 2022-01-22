import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User(this.name, this.pictureUrl);
  final String name;
  final String pictureUrl;

  @override
  List<Object> get props => [name, pictureUrl];
}
