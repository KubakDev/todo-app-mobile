part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.addTodo(Todo todo) = TodoAddEvent;
  const factory TodoEvent.updateTodo(Todo todo, int index) = TodoUpdateEvent;
  const factory TodoEvent.deleteTodo(String id, int index) = TodoDeleteEvent;
  const factory TodoEvent.getTodos(DateTime from, DateTime to) = TodoGetEvent;
  const factory TodoEvent.unAuthorized() = TodoUnAuthorizedEvent;
}
