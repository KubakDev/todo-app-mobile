part of 'todo_bloc.dart';

class TodoState extends Equatable {
  const TodoState(this.todos);
  final List<Todo> todos;

  @override
  List<Object?> get props => [todos];
}

class TodoInitial extends TodoState {
  const TodoInitial() : super(const []);
}

class TodoLoaded extends TodoState {
  const TodoLoaded(List<Todo> todos) : super(todos);
}

class TodoLoading extends TodoState {
  const TodoLoading(List<Todo> todos) : super(todos);
}

class TodoTokenExpired extends TodoState {
  const TodoTokenExpired(List<Todo> todos) : super(todos);
}

class TodoError extends TodoState {
  const TodoError(this.message, List<Todo> todos) : super(todos);
  final String message;

  @override
  List<Object?> get props => [message, todos];
}
