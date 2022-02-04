import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:database_repository/database_repository.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/app/bloc/bloc.dart';
import 'package:todo_app/shared/helpers/date_time_helper.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this.todoBloc)
      : super(
          HomeState(
            selectedDate: DateTime.now().copyWith(
              hour: 0,
              minute: 0,
              second: 0,
              millisecond: 0,
            ),
          ),
        ) {
    on<_RequestStream>(_onRequestStream);
    on<_Refresh>((event, emit) async {
      final dates = getDatesMonthRange(state.selectedDate);
      todoBloc.add(
        TodoEvent.getTodos(
          dates[0],
          dates[1],
        ),
      );
    });
    on<_SetSelectedDate>((event, emit) async {
      final dateRange = getDatesMonthRange(state.selectedDate);
      emit(
        state.copyWith(
          selectedDate: event.date,
          todos: todoBloc.state.todos
              .where((x) => filterTodo(x, event.date))
              .toList(),
        ),
      );

      if (!(event.date.isAfter(dateRange[0]) &&
          event.date.isBefore(dateRange[1]))) {
        add(const _Refresh());
      }
    });
    on<_DeleteTodo>((event, emit) async {
      if (!state.toBeDeletedTodos.contains(event.todo)) {
        emit(
          state.copyWith(
            toBeDeletedTodos: [...state.toBeDeletedTodos, event.todo],
          ),
        );
        EasyDebounce.debounce(
            'delete_${event.todo.id}', const Duration(seconds: 3), () {
          add(_ApplyDeleteTodo(event.todo));
        });
      }
    });
    on<_UndoDeleteTodo>((event, emit) async {
      EasyDebounce.cancel('delete_${event.todo.id}');
      emit(
        state.copyWith(
          toBeDeletedTodos: List<Todo>.from(state.toBeDeletedTodos)
            ..removeWhere((todo) => todo.id == event.todo.id),
        ),
      );
    });
    on<_ApplyDeleteTodo>((event, emit) async {
      todoBloc.add(TodoEvent.deleteTodo(event.todo.id!));
      emit(
        state.copyWith(
          toBeDeletedTodos: List<Todo>.from(state.toBeDeletedTodos)
            ..removeWhere((todo) => todo.id == event.todo.id),
          todos: List<Todo>.from(state.todos)
            ..removeWhere((todo) => todo.id == event.todo.id),
        ),
      );
    });
    on<_ChangeFilter>((event, emit) async {
      emit(
        state.copyWith(
          filter: event.filter,
          todos: todoBloc.state.todos
              .where((x) => filterTodo(x, state.selectedDate, event.filter))
              .toList(),
        ),
      );
    });
  }

  FutureOr<void> _onRequestStream(
    _RequestStream event,
    Emitter<HomeState> emit,
  ) async {
    await emit.forEach<TodoState>(
      todoBloc.stream,
      onData: (todoState) {
        final newState = state.copyWith(
          todos: todoState.todos
              .where((x) => filterTodo(x, state.selectedDate))
              .toList(),
          isLoading: todoState is TodoLoading,
          datesWithTodos: todoState.todos
              .map((e) => DateTime(e.date!.year, e.date!.month, e.date!.day))
              .toSet(),
          error: todoState is TodoError ? todoState.message : null,
        );

        return newState;
      },
    );
  }

  final TodoBloc todoBloc;

  bool filterTodo(Todo element, DateTime date, [TodoFilter? filter]) {
    var _result = element.date!.month == date.month &&
        element.date!.year == date.year &&
        element.date!.day == date.day;
    switch (filter ?? state.filter) {
      case TodoFilter.active:
        _result = _result && !(element.isComplete ?? false);
        break;
      case TodoFilter.completed:
        _result = _result && (element.isComplete ?? false);
        break;
      case TodoFilter.all:
        _result = _result && true;
        break;
    }

    return _result;
  }

  List<DateTime> getDatesMonthRange(DateTime selectedDate) {
    final _fromDate = DateTime(selectedDate.year, selectedDate.month);
    var _toDate = DateTime(selectedDate.year, selectedDate.month)
        .add(const Duration(days: 40));
    _toDate = DateTime(_toDate.year, _toDate.month);

    return [_fromDate, _toDate];
  }
}
