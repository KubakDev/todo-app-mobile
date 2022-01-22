import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

part 'swagger.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateTodo {
  CreateTodo({
    this.title,
    this.note,
    this.date,
    this.isComplete,
    this.isTimeAvailable,
  });

  factory CreateTodo.fromJson(Map<String, dynamic> json) =>
      _$CreateTodoFromJson(json);

  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'date')
  final DateTime? date;
  @JsonKey(name: 'isComplete')
  final bool? isComplete;
  @JsonKey(name: 'isTimeAvailable')
  final bool? isTimeAvailable;
  static const fromJsonFactory = _$CreateTodoFromJson;
  static const toJsonFactory = _$CreateTodoToJson;
  Map<String, dynamic> toJson() => _$CreateTodoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateTodo &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.isComplete, isComplete) ||
                const DeepCollectionEquality()
                    .equals(other.isComplete, isComplete)) &&
            (identical(other.isTimeAvailable, isTimeAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.isTimeAvailable, isTimeAvailable)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(isComplete) ^
      const DeepCollectionEquality().hash(isTimeAvailable) ^
      runtimeType.hashCode;
}

extension $CreateTodoExtension on CreateTodo {
  CreateTodo copyWith(
      {String? title,
      String? note,
      DateTime? date,
      bool? isComplete,
      bool? isTimeAvailable}) {
    return CreateTodo(
        title: title ?? this.title,
        note: note ?? this.note,
        date: date ?? this.date,
        isComplete: isComplete ?? this.isComplete,
        isTimeAvailable: isTimeAvailable ?? this.isTimeAvailable);
  }
}

@JsonSerializable(explicitToJson: true)
class Todo {
  Todo({
    this.id,
    this.userId,
    this.title,
    this.note,
    this.date,
    this.isComplete,
    this.isTimeAvailable,
  });

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'date')
  final DateTime? date;
  @JsonKey(name: 'isComplete')
  final bool? isComplete;
  @JsonKey(name: 'isTimeAvailable')
  final bool? isTimeAvailable;
  static const fromJsonFactory = _$TodoFromJson;
  static const toJsonFactory = _$TodoToJson;
  Map<String, dynamic> toJson() => _$TodoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Todo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.isComplete, isComplete) ||
                const DeepCollectionEquality()
                    .equals(other.isComplete, isComplete)) &&
            (identical(other.isTimeAvailable, isTimeAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.isTimeAvailable, isTimeAvailable)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(isComplete) ^
      const DeepCollectionEquality().hash(isTimeAvailable) ^
      runtimeType.hashCode;
}

extension $TodoExtension on Todo {
  Todo copyWith(
      {String? id,
      String? userId,
      String? title,
      String? note,
      DateTime? date,
      bool? isComplete,
      bool? isTimeAvailable}) {
    return Todo(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        title: title ?? this.title,
        note: note ?? this.note,
        date: date ?? this.date,
        isComplete: isComplete ?? this.isComplete,
        isTimeAvailable: isTimeAvailable ?? this.isTimeAvailable);
  }
}
