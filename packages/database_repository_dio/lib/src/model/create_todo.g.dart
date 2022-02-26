// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_todo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTodo extends CreateTodo {
  @override
  final String? title;
  @override
  final String? note;
  @override
  final DateTime? date;
  @override
  final bool? isComplete;

  factory _$CreateTodo([void Function(CreateTodoBuilder)? updates]) =>
      (new CreateTodoBuilder()..update(updates)).build();

  _$CreateTodo._({this.title, this.note, this.date, this.isComplete})
      : super._();

  @override
  CreateTodo rebuild(void Function(CreateTodoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTodoBuilder toBuilder() => new CreateTodoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTodo &&
        title == other.title &&
        note == other.note &&
        date == other.date &&
        isComplete == other.isComplete;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), note.hashCode), date.hashCode),
        isComplete.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateTodo')
          ..add('title', title)
          ..add('note', note)
          ..add('date', date)
          ..add('isComplete', isComplete))
        .toString();
  }
}

class CreateTodoBuilder implements Builder<CreateTodo, CreateTodoBuilder> {
  _$CreateTodo? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  bool? _isComplete;
  bool? get isComplete => _$this._isComplete;
  set isComplete(bool? isComplete) => _$this._isComplete = isComplete;

  CreateTodoBuilder() {
    CreateTodo._defaults(this);
  }

  CreateTodoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _note = $v.note;
      _date = $v.date;
      _isComplete = $v.isComplete;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTodo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTodo;
  }

  @override
  void update(void Function(CreateTodoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateTodo build() {
    final _$result = _$v ??
        new _$CreateTodo._(
            title: title, note: note, date: date, isComplete: isComplete);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
