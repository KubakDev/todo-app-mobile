part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.addTodo(Todo todo) = TodoAddEvent;
  const factory TodoEvent.updateTodo(Todo todo) = TodoUpdateEvent;
  const factory TodoEvent.deleteTodo(String id) = TodoDeleteEvent;
  const factory TodoEvent.getTodos(DateTime from, DateTime to) = TodoGetEvent;
  const factory TodoEvent.applyUpdate({
    required List<Todo> todos,
    String? error,
  }) = TodoApplyUpdateEvent;
  const factory TodoEvent.unAuthorized() = TodoUnAuthorizedEvent;
}
