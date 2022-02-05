import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:database_repository/database_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/app/app.dart';

part 'edit_task_state.dart';
part 'edit_task_cubit.freezed.dart';

class EditTaskCubit extends Cubit<EditTaskState> {
  EditTaskCubit(String? todoId, this.todoBloc)
      : super(EditTaskState(todo: Todo())) {
    if (todoId != null) {
      emit(state.copyWith(isLoading: true, isEditing: true));
      todoBloc.database
          .getTodo(todoId)
          .then(
            (value) => emit(
              state.copyWith(
                todo: value,
                isLoading: false,
                isEditing: true,
                error: null,
              ),
            ),
          )
          .catchError((dynamic e) {
        emit(state.copyWith(isLoading: false, error: e.toString()));
      });
    }

    todoSubscription = todoBloc.stream.listen((todoState) {
      var newState = state;
      if (todoState is TodoError) {
        newState = newState.copyWith(
          error: todoState.message,
          isLoading: false,
          isFinishing: false,
        );
      } else {
        newState = newState.copyWith(
          error: null,
        );
      }

      if (todoState is TodoLoaded && newState.isFinishing) {
        if (newState.isEditing &&
            todoState.todos.firstWhereOrNull(
                  (e) =>
                      e.title == newState.todo.title &&
                      e.note == newState.todo.note,
                ) !=
                null) {
          newState = newState.copyWith(isFinished: true);
        } else if (!newState.isEditing &&
            todoState.todos.firstWhereOrNull(
                  (e) =>
                      e.title == newState.todo.title &&
                      e.note == newState.todo.note,
                ) !=
                null) {
          newState = newState.copyWith(isFinished: true);
        }
      }
      emit(newState);
    });
  }

  final TodoBloc todoBloc;
  late final StreamSubscription todoSubscription;

  void setDate(DateTime date) {
    emit(state.copyWith(todo: state.todo.copyWith(date: date)));
  }

  Future finishEditing() async {
    try {
      var todo = state.todo;

      todo = todo.copyWith(
        date: todo.date ?? DateTime.now(),
        isComplete: todo.isComplete ?? false,
      );

      emit(state.copyWith(isLoading: true, isFinishing: true, todo: todo));
      await Future<void>.delayed(const Duration(milliseconds: 10));
      if (state.isEditing) {
        todoBloc.add(TodoEvent.updateTodo(todo));
      } else {
        todoBloc.add(TodoEvent.addTodo(todo));
      }
    } catch (e) {
      emit(
        state.copyWith(
          error: e.toString(),
          isLoading: false,
          isFinishing: false,
        ),
      );
    }
  }

  @override
  Future<void> close() {
    todoSubscription.cancel();
    return super.close();
  }

  void updateTodo(Todo copyWith) {
    emit(state.copyWith(todo: copyWith));
  }
}
