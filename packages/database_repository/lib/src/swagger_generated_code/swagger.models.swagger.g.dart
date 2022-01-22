// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateTodo _$CreateTodoFromJson(Map<String, dynamic> json) => CreateTodo(
      title: json['title'] as String?,
      note: json['note'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      isComplete: json['isComplete'] as bool?,
      isTimeAvailable: json['isTimeAvailable'] as bool?,
    );

Map<String, dynamic> _$CreateTodoToJson(CreateTodo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'note': instance.note,
      'date': instance.date?.toIso8601String(),
      'isComplete': instance.isComplete,
      'isTimeAvailable': instance.isTimeAvailable,
    };

Todo _$TodoFromJson(Map<String, dynamic> json) => Todo(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      title: json['title'] as String?,
      note: json['note'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      isComplete: json['isComplete'] as bool?,
      isTimeAvailable: json['isTimeAvailable'] as bool?,
    );

Map<String, dynamic> _$TodoToJson(Todo instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'note': instance.note,
      'date': instance.date?.toIso8601String(),
      'isComplete': instance.isComplete,
      'isTimeAvailable': instance.isTimeAvailable,
    };
