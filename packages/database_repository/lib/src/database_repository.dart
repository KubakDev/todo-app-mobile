import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:database_repository/src/swagger_generated_code/swagger.swagger.dart';
import 'package:hive/hive.dart';

const settingsBoxName = 'todo_settings';
enum Status {
  unauthorized,
}

class DatabaseRepository {
  DatabaseRepository() {
    chopperClient = ChopperClient(
      services: [
        Swagger.create(),
      ],
      converter: $JsonSerializableConverter(),
      baseUrl: 'http://a48a-62-201-240-145.ngrok.io',
      interceptors: <dynamic>[
        (Request request) => applyHeader(
              request,
              'Authorization',
              'Bearer ${box.get('token')}',
              override: false,
            ),
        (Response<dynamic> response) async {
          if (response.statusCode == 401) {
            _controller.add(Status.unauthorized);
          }
          return response;
        },
      ],
    );

    // chopper client with authorization token
  }
  final box = Hive.box<dynamic>(settingsBoxName);
  late final ChopperClient chopperClient;
  final _controller = StreamController<Status>();

  Stream<Status> get status async* {
    yield* _controller.stream;
  }

  Future<List<Todo>?> getTodos(DateTime from, DateTime to) async {
    final todosService = chopperClient.getService<Swagger>();

    final res = await todosService.todosGet(
      from: from.toIso8601String(),
      to: to.toIso8601String(),
    );

    // print(k);

    if (res.isSuccessful) {
      return res.body;
    } else {
      throw Exception(res.error);
    }
  }

  Future<Todo> createTodo(Todo todo) async {
    final todosService = chopperClient.getService<Swagger>();

    final res = await todosService.todosPost(
      body: CreateTodo(
        title: todo.title,
        date: todo.date,
        isTimeAvailable: todo.isTimeAvailable,
        isComplete: todo.isComplete,
        note: todo.note,
      ),
    );

    if (res.isSuccessful) {
      return res.body!;
    } else {
      throw Exception(res.body);
    }
  }

  Future<bool> deleteTodo(String id) async {
    final todosService = chopperClient.getService<Swagger>();

    final res = await todosService.todosIdDelete(id: id);

    if (res.isSuccessful) {
      return true;
    } else {
      throw Exception(res.body);
    }
  }

  Future<Todo> updateTodo(Todo todo) async {
    final todosService = chopperClient.getService<Swagger>();

    final res = await todosService.todosIdPut(
      id: todo.id,
      body: CreateTodo(
        title: todo.title,
        date: todo.date,
        isTimeAvailable: todo.isTimeAvailable,
        note: todo.note,
        isComplete: todo.isComplete,
      ),
    );

    if (res.isSuccessful) {
      return res.body!;
    } else {
      throw Exception(res.body);
    }
  }
}
