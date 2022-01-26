part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.requestStream() = _RequestStream;
  const factory HomeEvent.setSelectedDate(DateTime date) = _SetSelectedDate;
  const factory HomeEvent.deleteTodo(Todo todo) = _DeleteTodo;
  const factory HomeEvent.applyDeleteTodo(Todo todo) = _ApplyDeleteTodo;
  const factory HomeEvent.undoDeleteTodo(Todo todo) = _UndoDeleteTodo;
  const factory HomeEvent.changeFilter(TodoFilter filter) = _ChangeFilter;
  const factory HomeEvent.refresh() = _Refresh;
}
