import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:database_repository/database_repository.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/app/bloc/auth_bloc.dart';

part 'todo_bloc.freezed.dart';
part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc(this.database, this.authBloc) : super(const TodoInitial()) {
    dbStatus = database.status.listen((event) {
      switch (event) {
        case Status.unauthorized:
          add(const TodoUnAuthorizedEvent());
          break;
      }
    });

    on<TodoAddEvent>((event, emit) async {
      try {
        final result = await database.createTodo(event.todo);
        emit(TodoLoaded([result, ...state.todos]));
      } catch (e) {
        emit(TodoError(e.toString(), state.todos));
      }
    });

    on<TodoGetEvent>((event, emit) async {
      emit(TodoLoading(state.todos));
      final result = await database.getTodos(event.from, event.to);
      emit(TodoLoaded(result ?? []));
      // try {
      //   emit(TodoLoading(state.todos));
      //   final result = await database.getTodos(event.from, event.to);
      //   emit(TodoLoaded(result ?? []));
      // } catch (e) {
      //   emit(TodoError(e.toString(), state.todos));
      // }
    });

    on<TodoUpdateEvent>(
      _onTodoUpdate,
    );

    on<TodoDeleteEvent>((event, emit) async {
      try {
        await database.deleteTodo(event.id);
        final todos = List<Todo>.from(state.todos)..removeAt(event.index);
        emit(TodoLoaded(todos));
      } catch (e) {
        emit(TodoError(e.toString(), state.todos));
      }
    });

    on<TodoApplyUpdateEvent>((event, emit) async {
      if (event.error != null) {
        emit(TodoError(event.error!, event.todos));
      } else {
        emit(TodoLoaded(event.todos));
      }
    });
    on<TodoUnAuthorizedEvent>((event, emit) async {
      authBloc.add(const AuthEventRefreshToken());
    });
  }

  FutureOr<void> _onTodoUpdate(
    TodoUpdateEvent event,
    Emitter<TodoState> emit,
  ) async {
    final oldTodo = state.todos.firstWhere((todo) => todo.id == event.todo.id);
    final todos = List<Todo>.from(state.todos)..[event.index] = event.todo;
    emit(TodoLoaded(todos));
    EasyDebounce.debounce('todo_${event.todo.id}', todoUpdateDebounceDuration,
        () async {
      try {
        final result = await database.updateTodo(event.todo);
        final todos = List<Todo>.from(state.todos)..[event.index] = result;
        add(TodoApplyUpdateEvent(todos: todos));
      } catch (e) {
        final todos = List<Todo>.from(state.todos)..[event.index] = oldTodo;
        add(TodoApplyUpdateEvent(todos: todos, error: e.toString()));
      }
    });
  }

  final AuthBloc authBloc;
  final DatabaseRepository database;
  late final StreamSubscription dbStatus;
  static Duration todoUpdateDebounceDuration = const Duration(seconds: 1);

  @override
  Future<void> close() {
    dbStatus.cancel();
    return super.close();
  }
}
