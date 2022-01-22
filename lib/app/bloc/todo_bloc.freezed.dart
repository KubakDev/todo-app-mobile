// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoEventTearOff {
  const _$TodoEventTearOff();

  TodoAddEvent addTodo(Todo todo) {
    return TodoAddEvent(
      todo,
    );
  }

  TodoUpdateEvent updateTodo(Todo todo, int index) {
    return TodoUpdateEvent(
      todo,
      index,
    );
  }

  TodoDeleteEvent deleteTodo(String id, int index) {
    return TodoDeleteEvent(
      id,
      index,
    );
  }

  TodoGetEvent getTodos(DateTime from, DateTime to) {
    return TodoGetEvent(
      from,
      to,
    );
  }

  TodoUnAuthorizedEvent unAuthorized() {
    return const TodoUnAuthorizedEvent();
  }
}

/// @nodoc
const $TodoEvent = _$TodoEventTearOff();

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) addTodo,
    required TResult Function(Todo todo, int index) updateTodo,
    required TResult Function(String id, int index) deleteTodo,
    required TResult Function(DateTime from, DateTime to) getTodos,
    required TResult Function() unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? updateTodo,
    TResult Function(String id, int index)? deleteTodo,
    TResult Function(DateTime from, DateTime to)? getTodos,
    TResult Function()? unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? updateTodo,
    TResult Function(String id, int index)? deleteTodo,
    TResult Function(DateTime from, DateTime to)? getTodos,
    TResult Function()? unAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoAddEvent value) addTodo,
    required TResult Function(TodoUpdateEvent value) updateTodo,
    required TResult Function(TodoDeleteEvent value) deleteTodo,
    required TResult Function(TodoGetEvent value) getTodos,
    required TResult Function(TodoUnAuthorizedEvent value) unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodoAddEvent value)? addTodo,
    TResult Function(TodoUpdateEvent value)? updateTodo,
    TResult Function(TodoDeleteEvent value)? deleteTodo,
    TResult Function(TodoGetEvent value)? getTodos,
    TResult Function(TodoUnAuthorizedEvent value)? unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoAddEvent value)? addTodo,
    TResult Function(TodoUpdateEvent value)? updateTodo,
    TResult Function(TodoDeleteEvent value)? deleteTodo,
    TResult Function(TodoGetEvent value)? getTodos,
    TResult Function(TodoUnAuthorizedEvent value)? unAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res> implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  final TodoEvent _value;
  // ignore: unused_field
  final $Res Function(TodoEvent) _then;
}

/// @nodoc
abstract class $TodoAddEventCopyWith<$Res> {
  factory $TodoAddEventCopyWith(
          TodoAddEvent value, $Res Function(TodoAddEvent) then) =
      _$TodoAddEventCopyWithImpl<$Res>;
  $Res call({Todo todo});
}

/// @nodoc
class _$TodoAddEventCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements $TodoAddEventCopyWith<$Res> {
  _$TodoAddEventCopyWithImpl(
      TodoAddEvent _value, $Res Function(TodoAddEvent) _then)
      : super(_value, (v) => _then(v as TodoAddEvent));

  @override
  TodoAddEvent get _value => super._value as TodoAddEvent;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(TodoAddEvent(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }
}

/// @nodoc

class _$TodoAddEvent implements TodoAddEvent {
  const _$TodoAddEvent(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvent.addTodo(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodoAddEvent &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  $TodoAddEventCopyWith<TodoAddEvent> get copyWith =>
      _$TodoAddEventCopyWithImpl<TodoAddEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) addTodo,
    required TResult Function(Todo todo, int index) updateTodo,
    required TResult Function(String id, int index) deleteTodo,
    required TResult Function(DateTime from, DateTime to) getTodos,
    required TResult Function() unAuthorized,
  }) {
    return addTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? updateTodo,
    TResult Function(String id, int index)? deleteTodo,
    TResult Function(DateTime from, DateTime to)? getTodos,
    TResult Function()? unAuthorized,
  }) {
    return addTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? updateTodo,
    TResult Function(String id, int index)? deleteTodo,
    TResult Function(DateTime from, DateTime to)? getTodos,
    TResult Function()? unAuthorized,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoAddEvent value) addTodo,
    required TResult Function(TodoUpdateEvent value) updateTodo,
    required TResult Function(TodoDeleteEvent value) deleteTodo,
    required TResult Function(TodoGetEvent value) getTodos,
    required TResult Function(TodoUnAuthorizedEvent value) unAuthorized,
  }) {
    return addTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodoAddEvent value)? addTodo,
    TResult Function(TodoUpdateEvent value)? updateTodo,
    TResult Function(TodoDeleteEvent value)? deleteTodo,
    TResult Function(TodoGetEvent value)? getTodos,
    TResult Function(TodoUnAuthorizedEvent value)? unAuthorized,
  }) {
    return addTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoAddEvent value)? addTodo,
    TResult Function(TodoUpdateEvent value)? updateTodo,
    TResult Function(TodoDeleteEvent value)? deleteTodo,
    TResult Function(TodoGetEvent value)? getTodos,
    TResult Function(TodoUnAuthorizedEvent value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(this);
    }
    return orElse();
  }
}

abstract class TodoAddEvent implements TodoEvent {
  const factory TodoAddEvent(Todo todo) = _$TodoAddEvent;

  Todo get todo;
  @JsonKey(ignore: true)
  $TodoAddEventCopyWith<TodoAddEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoUpdateEventCopyWith<$Res> {
  factory $TodoUpdateEventCopyWith(
          TodoUpdateEvent value, $Res Function(TodoUpdateEvent) then) =
      _$TodoUpdateEventCopyWithImpl<$Res>;
  $Res call({Todo todo, int index});
}

/// @nodoc
class _$TodoUpdateEventCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements $TodoUpdateEventCopyWith<$Res> {
  _$TodoUpdateEventCopyWithImpl(
      TodoUpdateEvent _value, $Res Function(TodoUpdateEvent) _then)
      : super(_value, (v) => _then(v as TodoUpdateEvent));

  @override
  TodoUpdateEvent get _value => super._value as TodoUpdateEvent;

  @override
  $Res call({
    Object? todo = freezed,
    Object? index = freezed,
  }) {
    return _then(TodoUpdateEvent(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TodoUpdateEvent implements TodoUpdateEvent {
  const _$TodoUpdateEvent(this.todo, this.index);

  @override
  final Todo todo;
  @override
  final int index;

  @override
  String toString() {
    return 'TodoEvent.updateTodo(todo: $todo, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodoUpdateEvent &&
            const DeepCollectionEquality().equals(other.todo, todo) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(todo),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  $TodoUpdateEventCopyWith<TodoUpdateEvent> get copyWith =>
      _$TodoUpdateEventCopyWithImpl<TodoUpdateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) addTodo,
    required TResult Function(Todo todo, int index) updateTodo,
    required TResult Function(String id, int index) deleteTodo,
    required TResult Function(DateTime from, DateTime to) getTodos,
    required TResult Function() unAuthorized,
  }) {
    return updateTodo(todo, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? updateTodo,
    TResult Function(String id, int index)? deleteTodo,
    TResult Function(DateTime from, DateTime to)? getTodos,
    TResult Function()? unAuthorized,
  }) {
    return updateTodo?.call(todo, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? updateTodo,
    TResult Function(String id, int index)? deleteTodo,
    TResult Function(DateTime from, DateTime to)? getTodos,
    TResult Function()? unAuthorized,
    required TResult orElse(),
  }) {
    if (updateTodo != null) {
      return updateTodo(todo, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoAddEvent value) addTodo,
    required TResult Function(TodoUpdateEvent value) updateTodo,
    required TResult Function(TodoDeleteEvent value) deleteTodo,
    required TResult Function(TodoGetEvent value) getTodos,
    required TResult Function(TodoUnAuthorizedEvent value) unAuthorized,
  }) {
    return updateTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodoAddEvent value)? addTodo,
    TResult Function(TodoUpdateEvent value)? updateTodo,
    TResult Function(TodoDeleteEvent value)? deleteTodo,
    TResult Function(TodoGetEvent value)? getTodos,
    TResult Function(TodoUnAuthorizedEvent value)? unAuthorized,
  }) {
    return updateTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoAddEvent value)? addTodo,
    TResult Function(TodoUpdateEvent value)? updateTodo,
    TResult Function(TodoDeleteEvent value)? deleteTodo,
    TResult Function(TodoGetEvent value)? getTodos,
    TResult Function(TodoUnAuthorizedEvent value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (updateTodo != null) {
      return updateTodo(this);
    }
    return orElse();
  }
}

abstract class TodoUpdateEvent implements TodoEvent {
  const factory TodoUpdateEvent(Todo todo, int index) = _$TodoUpdateEvent;

  Todo get todo;
  int get index;
  @JsonKey(ignore: true)
  $TodoUpdateEventCopyWith<TodoUpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDeleteEventCopyWith<$Res> {
  factory $TodoDeleteEventCopyWith(
          TodoDeleteEvent value, $Res Function(TodoDeleteEvent) then) =
      _$TodoDeleteEventCopyWithImpl<$Res>;
  $Res call({String id, int index});
}

/// @nodoc
class _$TodoDeleteEventCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements $TodoDeleteEventCopyWith<$Res> {
  _$TodoDeleteEventCopyWithImpl(
      TodoDeleteEvent _value, $Res Function(TodoDeleteEvent) _then)
      : super(_value, (v) => _then(v as TodoDeleteEvent));

  @override
  TodoDeleteEvent get _value => super._value as TodoDeleteEvent;

  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
  }) {
    return _then(TodoDeleteEvent(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TodoDeleteEvent implements TodoDeleteEvent {
  const _$TodoDeleteEvent(this.id, this.index);

  @override
  final String id;
  @override
  final int index;

  @override
  String toString() {
    return 'TodoEvent.deleteTodo(id: $id, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodoDeleteEvent &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  $TodoDeleteEventCopyWith<TodoDeleteEvent> get copyWith =>
      _$TodoDeleteEventCopyWithImpl<TodoDeleteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) addTodo,
    required TResult Function(Todo todo, int index) updateTodo,
    required TResult Function(String id, int index) deleteTodo,
    required TResult Function(DateTime from, DateTime to) getTodos,
    required TResult Function() unAuthorized,
  }) {
    return deleteTodo(id, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? updateTodo,
    TResult Function(String id, int index)? deleteTodo,
    TResult Function(DateTime from, DateTime to)? getTodos,
    TResult Function()? unAuthorized,
  }) {
    return deleteTodo?.call(id, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? updateTodo,
    TResult Function(String id, int index)? deleteTodo,
    TResult Function(DateTime from, DateTime to)? getTodos,
    TResult Function()? unAuthorized,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(id, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoAddEvent value) addTodo,
    required TResult Function(TodoUpdateEvent value) updateTodo,
    required TResult Function(TodoDeleteEvent value) deleteTodo,
    required TResult Function(TodoGetEvent value) getTodos,
    required TResult Function(TodoUnAuthorizedEvent value) unAuthorized,
  }) {
    return deleteTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodoAddEvent value)? addTodo,
    TResult Function(TodoUpdateEvent value)? updateTodo,
    TResult Function(TodoDeleteEvent value)? deleteTodo,
    TResult Function(TodoGetEvent value)? getTodos,
    TResult Function(TodoUnAuthorizedEvent value)? unAuthorized,
  }) {
    return deleteTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoAddEvent value)? addTodo,
    TResult Function(TodoUpdateEvent value)? updateTodo,
    TResult Function(TodoDeleteEvent value)? deleteTodo,
    TResult Function(TodoGetEvent value)? getTodos,
    TResult Function(TodoUnAuthorizedEvent value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(this);
    }
    return orElse();
  }
}

abstract class TodoDeleteEvent implements TodoEvent {
  const factory TodoDeleteEvent(String id, int index) = _$TodoDeleteEvent;

  String get id;
  int get index;
  @JsonKey(ignore: true)
  $TodoDeleteEventCopyWith<TodoDeleteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoGetEventCopyWith<$Res> {
  factory $TodoGetEventCopyWith(
          TodoGetEvent value, $Res Function(TodoGetEvent) then) =
      _$TodoGetEventCopyWithImpl<$Res>;
  $Res call({DateTime from, DateTime to});
}

/// @nodoc
class _$TodoGetEventCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements $TodoGetEventCopyWith<$Res> {
  _$TodoGetEventCopyWithImpl(
      TodoGetEvent _value, $Res Function(TodoGetEvent) _then)
      : super(_value, (v) => _then(v as TodoGetEvent));

  @override
  TodoGetEvent get _value => super._value as TodoGetEvent;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(TodoGetEvent(
      from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TodoGetEvent implements TodoGetEvent {
  const _$TodoGetEvent(this.from, this.to);

  @override
  final DateTime from;
  @override
  final DateTime to;

  @override
  String toString() {
    return 'TodoEvent.getTodos(from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodoGetEvent &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to));

  @JsonKey(ignore: true)
  @override
  $TodoGetEventCopyWith<TodoGetEvent> get copyWith =>
      _$TodoGetEventCopyWithImpl<TodoGetEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) addTodo,
    required TResult Function(Todo todo, int index) updateTodo,
    required TResult Function(String id, int index) deleteTodo,
    required TResult Function(DateTime from, DateTime to) getTodos,
    required TResult Function() unAuthorized,
  }) {
    return getTodos(from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? updateTodo,
    TResult Function(String id, int index)? deleteTodo,
    TResult Function(DateTime from, DateTime to)? getTodos,
    TResult Function()? unAuthorized,
  }) {
    return getTodos?.call(from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? updateTodo,
    TResult Function(String id, int index)? deleteTodo,
    TResult Function(DateTime from, DateTime to)? getTodos,
    TResult Function()? unAuthorized,
    required TResult orElse(),
  }) {
    if (getTodos != null) {
      return getTodos(from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoAddEvent value) addTodo,
    required TResult Function(TodoUpdateEvent value) updateTodo,
    required TResult Function(TodoDeleteEvent value) deleteTodo,
    required TResult Function(TodoGetEvent value) getTodos,
    required TResult Function(TodoUnAuthorizedEvent value) unAuthorized,
  }) {
    return getTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodoAddEvent value)? addTodo,
    TResult Function(TodoUpdateEvent value)? updateTodo,
    TResult Function(TodoDeleteEvent value)? deleteTodo,
    TResult Function(TodoGetEvent value)? getTodos,
    TResult Function(TodoUnAuthorizedEvent value)? unAuthorized,
  }) {
    return getTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoAddEvent value)? addTodo,
    TResult Function(TodoUpdateEvent value)? updateTodo,
    TResult Function(TodoDeleteEvent value)? deleteTodo,
    TResult Function(TodoGetEvent value)? getTodos,
    TResult Function(TodoUnAuthorizedEvent value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (getTodos != null) {
      return getTodos(this);
    }
    return orElse();
  }
}

abstract class TodoGetEvent implements TodoEvent {
  const factory TodoGetEvent(DateTime from, DateTime to) = _$TodoGetEvent;

  DateTime get from;
  DateTime get to;
  @JsonKey(ignore: true)
  $TodoGetEventCopyWith<TodoGetEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoUnAuthorizedEventCopyWith<$Res> {
  factory $TodoUnAuthorizedEventCopyWith(TodoUnAuthorizedEvent value,
          $Res Function(TodoUnAuthorizedEvent) then) =
      _$TodoUnAuthorizedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoUnAuthorizedEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res>
    implements $TodoUnAuthorizedEventCopyWith<$Res> {
  _$TodoUnAuthorizedEventCopyWithImpl(
      TodoUnAuthorizedEvent _value, $Res Function(TodoUnAuthorizedEvent) _then)
      : super(_value, (v) => _then(v as TodoUnAuthorizedEvent));

  @override
  TodoUnAuthorizedEvent get _value => super._value as TodoUnAuthorizedEvent;
}

/// @nodoc

class _$TodoUnAuthorizedEvent implements TodoUnAuthorizedEvent {
  const _$TodoUnAuthorizedEvent();

  @override
  String toString() {
    return 'TodoEvent.unAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TodoUnAuthorizedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) addTodo,
    required TResult Function(Todo todo, int index) updateTodo,
    required TResult Function(String id, int index) deleteTodo,
    required TResult Function(DateTime from, DateTime to) getTodos,
    required TResult Function() unAuthorized,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? updateTodo,
    TResult Function(String id, int index)? deleteTodo,
    TResult Function(DateTime from, DateTime to)? getTodos,
    TResult Function()? unAuthorized,
  }) {
    return unAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? addTodo,
    TResult Function(Todo todo, int index)? updateTodo,
    TResult Function(String id, int index)? deleteTodo,
    TResult Function(DateTime from, DateTime to)? getTodos,
    TResult Function()? unAuthorized,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoAddEvent value) addTodo,
    required TResult Function(TodoUpdateEvent value) updateTodo,
    required TResult Function(TodoDeleteEvent value) deleteTodo,
    required TResult Function(TodoGetEvent value) getTodos,
    required TResult Function(TodoUnAuthorizedEvent value) unAuthorized,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodoAddEvent value)? addTodo,
    TResult Function(TodoUpdateEvent value)? updateTodo,
    TResult Function(TodoDeleteEvent value)? deleteTodo,
    TResult Function(TodoGetEvent value)? getTodos,
    TResult Function(TodoUnAuthorizedEvent value)? unAuthorized,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoAddEvent value)? addTodo,
    TResult Function(TodoUpdateEvent value)? updateTodo,
    TResult Function(TodoDeleteEvent value)? deleteTodo,
    TResult Function(TodoGetEvent value)? getTodos,
    TResult Function(TodoUnAuthorizedEvent value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class TodoUnAuthorizedEvent implements TodoEvent {
  const factory TodoUnAuthorizedEvent() = _$TodoUnAuthorizedEvent;
}
