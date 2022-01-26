// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _RequestStream requestStream() {
    return const _RequestStream();
  }

  _SetSelectedDate setSelectedDate(DateTime date) {
    return _SetSelectedDate(
      date,
    );
  }

  _DeleteTodo deleteTodo(Todo todo) {
    return _DeleteTodo(
      todo,
    );
  }

  _ApplyDeleteTodo applyDeleteTodo(Todo todo) {
    return _ApplyDeleteTodo(
      todo,
    );
  }

  _UndoDeleteTodo undoDeleteTodo(Todo todo) {
    return _UndoDeleteTodo(
      todo,
    );
  }

  _ChangeFilter changeFilter(TodoFilter filter) {
    return _ChangeFilter(
      filter,
    );
  }

  _Refresh refresh() {
    return const _Refresh();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestStream,
    required TResult Function(DateTime date) setSelectedDate,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(Todo todo) applyDeleteTodo,
    required TResult Function(Todo todo) undoDeleteTodo,
    required TResult Function(TodoFilter filter) changeFilter,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestStream,
    TResult Function(DateTime date)? setSelectedDate,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo)? applyDeleteTodo,
    TResult Function(Todo todo)? undoDeleteTodo,
    TResult Function(TodoFilter filter)? changeFilter,
    TResult Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestStream,
    TResult Function(DateTime date)? setSelectedDate,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo)? applyDeleteTodo,
    TResult Function(Todo todo)? undoDeleteTodo,
    TResult Function(TodoFilter filter)? changeFilter,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestStream value) requestStream,
    required TResult Function(_SetSelectedDate value) setSelectedDate,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ApplyDeleteTodo value) applyDeleteTodo,
    required TResult Function(_UndoDeleteTodo value) undoDeleteTodo,
    required TResult Function(_ChangeFilter value) changeFilter,
    required TResult Function(_Refresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestStream value)? requestStream,
    TResult Function(_SetSelectedDate value)? setSelectedDate,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ApplyDeleteTodo value)? applyDeleteTodo,
    TResult Function(_UndoDeleteTodo value)? undoDeleteTodo,
    TResult Function(_ChangeFilter value)? changeFilter,
    TResult Function(_Refresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestStream value)? requestStream,
    TResult Function(_SetSelectedDate value)? setSelectedDate,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ApplyDeleteTodo value)? applyDeleteTodo,
    TResult Function(_UndoDeleteTodo value)? undoDeleteTodo,
    TResult Function(_ChangeFilter value)? changeFilter,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$RequestStreamCopyWith<$Res> {
  factory _$RequestStreamCopyWith(
          _RequestStream value, $Res Function(_RequestStream) then) =
      __$RequestStreamCopyWithImpl<$Res>;
}

/// @nodoc
class __$RequestStreamCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$RequestStreamCopyWith<$Res> {
  __$RequestStreamCopyWithImpl(
      _RequestStream _value, $Res Function(_RequestStream) _then)
      : super(_value, (v) => _then(v as _RequestStream));

  @override
  _RequestStream get _value => super._value as _RequestStream;
}

/// @nodoc

class _$_RequestStream with DiagnosticableTreeMixin implements _RequestStream {
  const _$_RequestStream();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.requestStream()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeEvent.requestStream'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RequestStream);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestStream,
    required TResult Function(DateTime date) setSelectedDate,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(Todo todo) applyDeleteTodo,
    required TResult Function(Todo todo) undoDeleteTodo,
    required TResult Function(TodoFilter filter) changeFilter,
    required TResult Function() refresh,
  }) {
    return requestStream();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestStream,
    TResult Function(DateTime date)? setSelectedDate,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo)? applyDeleteTodo,
    TResult Function(Todo todo)? undoDeleteTodo,
    TResult Function(TodoFilter filter)? changeFilter,
    TResult Function()? refresh,
  }) {
    return requestStream?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestStream,
    TResult Function(DateTime date)? setSelectedDate,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo)? applyDeleteTodo,
    TResult Function(Todo todo)? undoDeleteTodo,
    TResult Function(TodoFilter filter)? changeFilter,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (requestStream != null) {
      return requestStream();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestStream value) requestStream,
    required TResult Function(_SetSelectedDate value) setSelectedDate,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ApplyDeleteTodo value) applyDeleteTodo,
    required TResult Function(_UndoDeleteTodo value) undoDeleteTodo,
    required TResult Function(_ChangeFilter value) changeFilter,
    required TResult Function(_Refresh value) refresh,
  }) {
    return requestStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestStream value)? requestStream,
    TResult Function(_SetSelectedDate value)? setSelectedDate,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ApplyDeleteTodo value)? applyDeleteTodo,
    TResult Function(_UndoDeleteTodo value)? undoDeleteTodo,
    TResult Function(_ChangeFilter value)? changeFilter,
    TResult Function(_Refresh value)? refresh,
  }) {
    return requestStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestStream value)? requestStream,
    TResult Function(_SetSelectedDate value)? setSelectedDate,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ApplyDeleteTodo value)? applyDeleteTodo,
    TResult Function(_UndoDeleteTodo value)? undoDeleteTodo,
    TResult Function(_ChangeFilter value)? changeFilter,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (requestStream != null) {
      return requestStream(this);
    }
    return orElse();
  }
}

abstract class _RequestStream implements HomeEvent {
  const factory _RequestStream() = _$_RequestStream;
}

/// @nodoc
abstract class _$SetSelectedDateCopyWith<$Res> {
  factory _$SetSelectedDateCopyWith(
          _SetSelectedDate value, $Res Function(_SetSelectedDate) then) =
      __$SetSelectedDateCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class __$SetSelectedDateCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$SetSelectedDateCopyWith<$Res> {
  __$SetSelectedDateCopyWithImpl(
      _SetSelectedDate _value, $Res Function(_SetSelectedDate) _then)
      : super(_value, (v) => _then(v as _SetSelectedDate));

  @override
  _SetSelectedDate get _value => super._value as _SetSelectedDate;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_SetSelectedDate(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_SetSelectedDate
    with DiagnosticableTreeMixin
    implements _SetSelectedDate {
  const _$_SetSelectedDate(this.date);

  @override
  final DateTime date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.setSelectedDate(date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.setSelectedDate'))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetSelectedDate &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$SetSelectedDateCopyWith<_SetSelectedDate> get copyWith =>
      __$SetSelectedDateCopyWithImpl<_SetSelectedDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestStream,
    required TResult Function(DateTime date) setSelectedDate,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(Todo todo) applyDeleteTodo,
    required TResult Function(Todo todo) undoDeleteTodo,
    required TResult Function(TodoFilter filter) changeFilter,
    required TResult Function() refresh,
  }) {
    return setSelectedDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestStream,
    TResult Function(DateTime date)? setSelectedDate,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo)? applyDeleteTodo,
    TResult Function(Todo todo)? undoDeleteTodo,
    TResult Function(TodoFilter filter)? changeFilter,
    TResult Function()? refresh,
  }) {
    return setSelectedDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestStream,
    TResult Function(DateTime date)? setSelectedDate,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo)? applyDeleteTodo,
    TResult Function(Todo todo)? undoDeleteTodo,
    TResult Function(TodoFilter filter)? changeFilter,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (setSelectedDate != null) {
      return setSelectedDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestStream value) requestStream,
    required TResult Function(_SetSelectedDate value) setSelectedDate,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ApplyDeleteTodo value) applyDeleteTodo,
    required TResult Function(_UndoDeleteTodo value) undoDeleteTodo,
    required TResult Function(_ChangeFilter value) changeFilter,
    required TResult Function(_Refresh value) refresh,
  }) {
    return setSelectedDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestStream value)? requestStream,
    TResult Function(_SetSelectedDate value)? setSelectedDate,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ApplyDeleteTodo value)? applyDeleteTodo,
    TResult Function(_UndoDeleteTodo value)? undoDeleteTodo,
    TResult Function(_ChangeFilter value)? changeFilter,
    TResult Function(_Refresh value)? refresh,
  }) {
    return setSelectedDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestStream value)? requestStream,
    TResult Function(_SetSelectedDate value)? setSelectedDate,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ApplyDeleteTodo value)? applyDeleteTodo,
    TResult Function(_UndoDeleteTodo value)? undoDeleteTodo,
    TResult Function(_ChangeFilter value)? changeFilter,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (setSelectedDate != null) {
      return setSelectedDate(this);
    }
    return orElse();
  }
}

abstract class _SetSelectedDate implements HomeEvent {
  const factory _SetSelectedDate(DateTime date) = _$_SetSelectedDate;

  DateTime get date;
  @JsonKey(ignore: true)
  _$SetSelectedDateCopyWith<_SetSelectedDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteTodoCopyWith<$Res> {
  factory _$DeleteTodoCopyWith(
          _DeleteTodo value, $Res Function(_DeleteTodo) then) =
      __$DeleteTodoCopyWithImpl<$Res>;
  $Res call({Todo todo});
}

/// @nodoc
class __$DeleteTodoCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$DeleteTodoCopyWith<$Res> {
  __$DeleteTodoCopyWithImpl(
      _DeleteTodo _value, $Res Function(_DeleteTodo) _then)
      : super(_value, (v) => _then(v as _DeleteTodo));

  @override
  _DeleteTodo get _value => super._value as _DeleteTodo;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_DeleteTodo(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }
}

/// @nodoc

class _$_DeleteTodo with DiagnosticableTreeMixin implements _DeleteTodo {
  const _$_DeleteTodo(this.todo);

  @override
  final Todo todo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.deleteTodo(todo: $todo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.deleteTodo'))
      ..add(DiagnosticsProperty('todo', todo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteTodo &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$DeleteTodoCopyWith<_DeleteTodo> get copyWith =>
      __$DeleteTodoCopyWithImpl<_DeleteTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestStream,
    required TResult Function(DateTime date) setSelectedDate,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(Todo todo) applyDeleteTodo,
    required TResult Function(Todo todo) undoDeleteTodo,
    required TResult Function(TodoFilter filter) changeFilter,
    required TResult Function() refresh,
  }) {
    return deleteTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestStream,
    TResult Function(DateTime date)? setSelectedDate,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo)? applyDeleteTodo,
    TResult Function(Todo todo)? undoDeleteTodo,
    TResult Function(TodoFilter filter)? changeFilter,
    TResult Function()? refresh,
  }) {
    return deleteTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestStream,
    TResult Function(DateTime date)? setSelectedDate,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo)? applyDeleteTodo,
    TResult Function(Todo todo)? undoDeleteTodo,
    TResult Function(TodoFilter filter)? changeFilter,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestStream value) requestStream,
    required TResult Function(_SetSelectedDate value) setSelectedDate,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ApplyDeleteTodo value) applyDeleteTodo,
    required TResult Function(_UndoDeleteTodo value) undoDeleteTodo,
    required TResult Function(_ChangeFilter value) changeFilter,
    required TResult Function(_Refresh value) refresh,
  }) {
    return deleteTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestStream value)? requestStream,
    TResult Function(_SetSelectedDate value)? setSelectedDate,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ApplyDeleteTodo value)? applyDeleteTodo,
    TResult Function(_UndoDeleteTodo value)? undoDeleteTodo,
    TResult Function(_ChangeFilter value)? changeFilter,
    TResult Function(_Refresh value)? refresh,
  }) {
    return deleteTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestStream value)? requestStream,
    TResult Function(_SetSelectedDate value)? setSelectedDate,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ApplyDeleteTodo value)? applyDeleteTodo,
    TResult Function(_UndoDeleteTodo value)? undoDeleteTodo,
    TResult Function(_ChangeFilter value)? changeFilter,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(this);
    }
    return orElse();
  }
}

abstract class _DeleteTodo implements HomeEvent {
  const factory _DeleteTodo(Todo todo) = _$_DeleteTodo;

  Todo get todo;
  @JsonKey(ignore: true)
  _$DeleteTodoCopyWith<_DeleteTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ApplyDeleteTodoCopyWith<$Res> {
  factory _$ApplyDeleteTodoCopyWith(
          _ApplyDeleteTodo value, $Res Function(_ApplyDeleteTodo) then) =
      __$ApplyDeleteTodoCopyWithImpl<$Res>;
  $Res call({Todo todo});
}

/// @nodoc
class __$ApplyDeleteTodoCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$ApplyDeleteTodoCopyWith<$Res> {
  __$ApplyDeleteTodoCopyWithImpl(
      _ApplyDeleteTodo _value, $Res Function(_ApplyDeleteTodo) _then)
      : super(_value, (v) => _then(v as _ApplyDeleteTodo));

  @override
  _ApplyDeleteTodo get _value => super._value as _ApplyDeleteTodo;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_ApplyDeleteTodo(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }
}

/// @nodoc

class _$_ApplyDeleteTodo
    with DiagnosticableTreeMixin
    implements _ApplyDeleteTodo {
  const _$_ApplyDeleteTodo(this.todo);

  @override
  final Todo todo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.applyDeleteTodo(todo: $todo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.applyDeleteTodo'))
      ..add(DiagnosticsProperty('todo', todo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApplyDeleteTodo &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$ApplyDeleteTodoCopyWith<_ApplyDeleteTodo> get copyWith =>
      __$ApplyDeleteTodoCopyWithImpl<_ApplyDeleteTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestStream,
    required TResult Function(DateTime date) setSelectedDate,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(Todo todo) applyDeleteTodo,
    required TResult Function(Todo todo) undoDeleteTodo,
    required TResult Function(TodoFilter filter) changeFilter,
    required TResult Function() refresh,
  }) {
    return applyDeleteTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestStream,
    TResult Function(DateTime date)? setSelectedDate,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo)? applyDeleteTodo,
    TResult Function(Todo todo)? undoDeleteTodo,
    TResult Function(TodoFilter filter)? changeFilter,
    TResult Function()? refresh,
  }) {
    return applyDeleteTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestStream,
    TResult Function(DateTime date)? setSelectedDate,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo)? applyDeleteTodo,
    TResult Function(Todo todo)? undoDeleteTodo,
    TResult Function(TodoFilter filter)? changeFilter,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (applyDeleteTodo != null) {
      return applyDeleteTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestStream value) requestStream,
    required TResult Function(_SetSelectedDate value) setSelectedDate,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ApplyDeleteTodo value) applyDeleteTodo,
    required TResult Function(_UndoDeleteTodo value) undoDeleteTodo,
    required TResult Function(_ChangeFilter value) changeFilter,
    required TResult Function(_Refresh value) refresh,
  }) {
    return applyDeleteTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestStream value)? requestStream,
    TResult Function(_SetSelectedDate value)? setSelectedDate,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ApplyDeleteTodo value)? applyDeleteTodo,
    TResult Function(_UndoDeleteTodo value)? undoDeleteTodo,
    TResult Function(_ChangeFilter value)? changeFilter,
    TResult Function(_Refresh value)? refresh,
  }) {
    return applyDeleteTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestStream value)? requestStream,
    TResult Function(_SetSelectedDate value)? setSelectedDate,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ApplyDeleteTodo value)? applyDeleteTodo,
    TResult Function(_UndoDeleteTodo value)? undoDeleteTodo,
    TResult Function(_ChangeFilter value)? changeFilter,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (applyDeleteTodo != null) {
      return applyDeleteTodo(this);
    }
    return orElse();
  }
}

abstract class _ApplyDeleteTodo implements HomeEvent {
  const factory _ApplyDeleteTodo(Todo todo) = _$_ApplyDeleteTodo;

  Todo get todo;
  @JsonKey(ignore: true)
  _$ApplyDeleteTodoCopyWith<_ApplyDeleteTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UndoDeleteTodoCopyWith<$Res> {
  factory _$UndoDeleteTodoCopyWith(
          _UndoDeleteTodo value, $Res Function(_UndoDeleteTodo) then) =
      __$UndoDeleteTodoCopyWithImpl<$Res>;
  $Res call({Todo todo});
}

/// @nodoc
class __$UndoDeleteTodoCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$UndoDeleteTodoCopyWith<$Res> {
  __$UndoDeleteTodoCopyWithImpl(
      _UndoDeleteTodo _value, $Res Function(_UndoDeleteTodo) _then)
      : super(_value, (v) => _then(v as _UndoDeleteTodo));

  @override
  _UndoDeleteTodo get _value => super._value as _UndoDeleteTodo;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_UndoDeleteTodo(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }
}

/// @nodoc

class _$_UndoDeleteTodo
    with DiagnosticableTreeMixin
    implements _UndoDeleteTodo {
  const _$_UndoDeleteTodo(this.todo);

  @override
  final Todo todo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.undoDeleteTodo(todo: $todo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.undoDeleteTodo'))
      ..add(DiagnosticsProperty('todo', todo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UndoDeleteTodo &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$UndoDeleteTodoCopyWith<_UndoDeleteTodo> get copyWith =>
      __$UndoDeleteTodoCopyWithImpl<_UndoDeleteTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestStream,
    required TResult Function(DateTime date) setSelectedDate,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(Todo todo) applyDeleteTodo,
    required TResult Function(Todo todo) undoDeleteTodo,
    required TResult Function(TodoFilter filter) changeFilter,
    required TResult Function() refresh,
  }) {
    return undoDeleteTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestStream,
    TResult Function(DateTime date)? setSelectedDate,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo)? applyDeleteTodo,
    TResult Function(Todo todo)? undoDeleteTodo,
    TResult Function(TodoFilter filter)? changeFilter,
    TResult Function()? refresh,
  }) {
    return undoDeleteTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestStream,
    TResult Function(DateTime date)? setSelectedDate,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo)? applyDeleteTodo,
    TResult Function(Todo todo)? undoDeleteTodo,
    TResult Function(TodoFilter filter)? changeFilter,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (undoDeleteTodo != null) {
      return undoDeleteTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestStream value) requestStream,
    required TResult Function(_SetSelectedDate value) setSelectedDate,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ApplyDeleteTodo value) applyDeleteTodo,
    required TResult Function(_UndoDeleteTodo value) undoDeleteTodo,
    required TResult Function(_ChangeFilter value) changeFilter,
    required TResult Function(_Refresh value) refresh,
  }) {
    return undoDeleteTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestStream value)? requestStream,
    TResult Function(_SetSelectedDate value)? setSelectedDate,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ApplyDeleteTodo value)? applyDeleteTodo,
    TResult Function(_UndoDeleteTodo value)? undoDeleteTodo,
    TResult Function(_ChangeFilter value)? changeFilter,
    TResult Function(_Refresh value)? refresh,
  }) {
    return undoDeleteTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestStream value)? requestStream,
    TResult Function(_SetSelectedDate value)? setSelectedDate,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ApplyDeleteTodo value)? applyDeleteTodo,
    TResult Function(_UndoDeleteTodo value)? undoDeleteTodo,
    TResult Function(_ChangeFilter value)? changeFilter,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (undoDeleteTodo != null) {
      return undoDeleteTodo(this);
    }
    return orElse();
  }
}

abstract class _UndoDeleteTodo implements HomeEvent {
  const factory _UndoDeleteTodo(Todo todo) = _$_UndoDeleteTodo;

  Todo get todo;
  @JsonKey(ignore: true)
  _$UndoDeleteTodoCopyWith<_UndoDeleteTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeFilterCopyWith<$Res> {
  factory _$ChangeFilterCopyWith(
          _ChangeFilter value, $Res Function(_ChangeFilter) then) =
      __$ChangeFilterCopyWithImpl<$Res>;
  $Res call({TodoFilter filter});
}

/// @nodoc
class __$ChangeFilterCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$ChangeFilterCopyWith<$Res> {
  __$ChangeFilterCopyWithImpl(
      _ChangeFilter _value, $Res Function(_ChangeFilter) _then)
      : super(_value, (v) => _then(v as _ChangeFilter));

  @override
  _ChangeFilter get _value => super._value as _ChangeFilter;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_ChangeFilter(
      filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TodoFilter,
    ));
  }
}

/// @nodoc

class _$_ChangeFilter with DiagnosticableTreeMixin implements _ChangeFilter {
  const _$_ChangeFilter(this.filter);

  @override
  final TodoFilter filter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.changeFilter(filter: $filter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.changeFilter'))
      ..add(DiagnosticsProperty('filter', filter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeFilter &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$ChangeFilterCopyWith<_ChangeFilter> get copyWith =>
      __$ChangeFilterCopyWithImpl<_ChangeFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestStream,
    required TResult Function(DateTime date) setSelectedDate,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(Todo todo) applyDeleteTodo,
    required TResult Function(Todo todo) undoDeleteTodo,
    required TResult Function(TodoFilter filter) changeFilter,
    required TResult Function() refresh,
  }) {
    return changeFilter(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestStream,
    TResult Function(DateTime date)? setSelectedDate,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo)? applyDeleteTodo,
    TResult Function(Todo todo)? undoDeleteTodo,
    TResult Function(TodoFilter filter)? changeFilter,
    TResult Function()? refresh,
  }) {
    return changeFilter?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestStream,
    TResult Function(DateTime date)? setSelectedDate,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo)? applyDeleteTodo,
    TResult Function(Todo todo)? undoDeleteTodo,
    TResult Function(TodoFilter filter)? changeFilter,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (changeFilter != null) {
      return changeFilter(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestStream value) requestStream,
    required TResult Function(_SetSelectedDate value) setSelectedDate,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ApplyDeleteTodo value) applyDeleteTodo,
    required TResult Function(_UndoDeleteTodo value) undoDeleteTodo,
    required TResult Function(_ChangeFilter value) changeFilter,
    required TResult Function(_Refresh value) refresh,
  }) {
    return changeFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestStream value)? requestStream,
    TResult Function(_SetSelectedDate value)? setSelectedDate,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ApplyDeleteTodo value)? applyDeleteTodo,
    TResult Function(_UndoDeleteTodo value)? undoDeleteTodo,
    TResult Function(_ChangeFilter value)? changeFilter,
    TResult Function(_Refresh value)? refresh,
  }) {
    return changeFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestStream value)? requestStream,
    TResult Function(_SetSelectedDate value)? setSelectedDate,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ApplyDeleteTodo value)? applyDeleteTodo,
    TResult Function(_UndoDeleteTodo value)? undoDeleteTodo,
    TResult Function(_ChangeFilter value)? changeFilter,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (changeFilter != null) {
      return changeFilter(this);
    }
    return orElse();
  }
}

abstract class _ChangeFilter implements HomeEvent {
  const factory _ChangeFilter(TodoFilter filter) = _$_ChangeFilter;

  TodoFilter get filter;
  @JsonKey(ignore: true)
  _$ChangeFilterCopyWith<_ChangeFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RefreshCopyWith<$Res> {
  factory _$RefreshCopyWith(_Refresh value, $Res Function(_Refresh) then) =
      __$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$RefreshCopyWith<$Res> {
  __$RefreshCopyWithImpl(_Refresh _value, $Res Function(_Refresh) _then)
      : super(_value, (v) => _then(v as _Refresh));

  @override
  _Refresh get _value => super._value as _Refresh;
}

/// @nodoc

class _$_Refresh with DiagnosticableTreeMixin implements _Refresh {
  const _$_Refresh();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.refresh()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeEvent.refresh'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestStream,
    required TResult Function(DateTime date) setSelectedDate,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(Todo todo) applyDeleteTodo,
    required TResult Function(Todo todo) undoDeleteTodo,
    required TResult Function(TodoFilter filter) changeFilter,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestStream,
    TResult Function(DateTime date)? setSelectedDate,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo)? applyDeleteTodo,
    TResult Function(Todo todo)? undoDeleteTodo,
    TResult Function(TodoFilter filter)? changeFilter,
    TResult Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestStream,
    TResult Function(DateTime date)? setSelectedDate,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo)? applyDeleteTodo,
    TResult Function(Todo todo)? undoDeleteTodo,
    TResult Function(TodoFilter filter)? changeFilter,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestStream value) requestStream,
    required TResult Function(_SetSelectedDate value) setSelectedDate,
    required TResult Function(_DeleteTodo value) deleteTodo,
    required TResult Function(_ApplyDeleteTodo value) applyDeleteTodo,
    required TResult Function(_UndoDeleteTodo value) undoDeleteTodo,
    required TResult Function(_ChangeFilter value) changeFilter,
    required TResult Function(_Refresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestStream value)? requestStream,
    TResult Function(_SetSelectedDate value)? setSelectedDate,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ApplyDeleteTodo value)? applyDeleteTodo,
    TResult Function(_UndoDeleteTodo value)? undoDeleteTodo,
    TResult Function(_ChangeFilter value)? changeFilter,
    TResult Function(_Refresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestStream value)? requestStream,
    TResult Function(_SetSelectedDate value)? setSelectedDate,
    TResult Function(_DeleteTodo value)? deleteTodo,
    TResult Function(_ApplyDeleteTodo value)? applyDeleteTodo,
    TResult Function(_UndoDeleteTodo value)? undoDeleteTodo,
    TResult Function(_ChangeFilter value)? changeFilter,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements HomeEvent {
  const factory _Refresh() = _$_Refresh;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {List<Todo> todos = const <Todo>[],
      Set<DateTime> datesWithTodos = const <DateTime>{},
      TodoFilter filter = TodoFilter.all,
      required DateTime selectedDate,
      List<Todo> toBeDeletedTodos = const <Todo>[],
      String? error,
      bool isLoading = false}) {
    return _HomeState(
      todos: todos,
      datesWithTodos: datesWithTodos,
      filter: filter,
      selectedDate: selectedDate,
      toBeDeletedTodos: toBeDeletedTodos,
      error: error,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  List<Todo> get todos => throw _privateConstructorUsedError;
  Set<DateTime> get datesWithTodos => throw _privateConstructorUsedError;
  TodoFilter get filter => throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;
  List<Todo> get toBeDeletedTodos => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {List<Todo> todos,
      Set<DateTime> datesWithTodos,
      TodoFilter filter,
      DateTime selectedDate,
      List<Todo> toBeDeletedTodos,
      String? error,
      bool isLoading});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? todos = freezed,
    Object? datesWithTodos = freezed,
    Object? filter = freezed,
    Object? selectedDate = freezed,
    Object? toBeDeletedTodos = freezed,
    Object? error = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      datesWithTodos: datesWithTodos == freezed
          ? _value.datesWithTodos
          : datesWithTodos // ignore: cast_nullable_to_non_nullable
              as Set<DateTime>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TodoFilter,
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toBeDeletedTodos: toBeDeletedTodos == freezed
          ? _value.toBeDeletedTodos
          : toBeDeletedTodos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Todo> todos,
      Set<DateTime> datesWithTodos,
      TodoFilter filter,
      DateTime selectedDate,
      List<Todo> toBeDeletedTodos,
      String? error,
      bool isLoading});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? todos = freezed,
    Object? datesWithTodos = freezed,
    Object? filter = freezed,
    Object? selectedDate = freezed,
    Object? toBeDeletedTodos = freezed,
    Object? error = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_HomeState(
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      datesWithTodos: datesWithTodos == freezed
          ? _value.datesWithTodos
          : datesWithTodos // ignore: cast_nullable_to_non_nullable
              as Set<DateTime>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TodoFilter,
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toBeDeletedTodos: toBeDeletedTodos == freezed
          ? _value.toBeDeletedTodos
          : toBeDeletedTodos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  const _$_HomeState(
      {this.todos = const <Todo>[],
      this.datesWithTodos = const <DateTime>{},
      this.filter = TodoFilter.all,
      required this.selectedDate,
      this.toBeDeletedTodos = const <Todo>[],
      this.error,
      this.isLoading = false});

  @JsonKey()
  @override
  final List<Todo> todos;
  @JsonKey()
  @override
  final Set<DateTime> datesWithTodos;
  @JsonKey()
  @override
  final TodoFilter filter;
  @override
  final DateTime selectedDate;
  @JsonKey()
  @override
  final List<Todo> toBeDeletedTodos;
  @override
  final String? error;
  @JsonKey()
  @override
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(todos: $todos, datesWithTodos: $datesWithTodos, filter: $filter, selectedDate: $selectedDate, toBeDeletedTodos: $toBeDeletedTodos, error: $error, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('todos', todos))
      ..add(DiagnosticsProperty('datesWithTodos', datesWithTodos))
      ..add(DiagnosticsProperty('filter', filter))
      ..add(DiagnosticsProperty('selectedDate', selectedDate))
      ..add(DiagnosticsProperty('toBeDeletedTodos', toBeDeletedTodos))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality().equals(other.todos, todos) &&
            const DeepCollectionEquality()
                .equals(other.datesWithTodos, datesWithTodos) &&
            const DeepCollectionEquality().equals(other.filter, filter) &&
            const DeepCollectionEquality()
                .equals(other.selectedDate, selectedDate) &&
            const DeepCollectionEquality()
                .equals(other.toBeDeletedTodos, toBeDeletedTodos) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(todos),
      const DeepCollectionEquality().hash(datesWithTodos),
      const DeepCollectionEquality().hash(filter),
      const DeepCollectionEquality().hash(selectedDate),
      const DeepCollectionEquality().hash(toBeDeletedTodos),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {List<Todo> todos,
      Set<DateTime> datesWithTodos,
      TodoFilter filter,
      required DateTime selectedDate,
      List<Todo> toBeDeletedTodos,
      String? error,
      bool isLoading}) = _$_HomeState;

  @override
  List<Todo> get todos;
  @override
  Set<DateTime> get datesWithTodos;
  @override
  TodoFilter get filter;
  @override
  DateTime get selectedDate;
  @override
  List<Todo> get toBeDeletedTodos;
  @override
  String? get error;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
