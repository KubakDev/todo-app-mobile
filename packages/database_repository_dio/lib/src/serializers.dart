//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:database_repository_dio/src/date_serializer.dart';
import 'package:database_repository_dio/src/model/date.dart';

import 'package:database_repository_dio/src/model/create_todo.dart';
import 'package:database_repository_dio/src/model/todo.dart';

part 'serializers.g.dart';

@SerializersFor([
  CreateTodo,
  Todo,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Todo)]),
        () => ListBuilder<Todo>(),
      )
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
