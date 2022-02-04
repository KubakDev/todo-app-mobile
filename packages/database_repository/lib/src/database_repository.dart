import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:chopper/chopper.dart';
import 'package:database_repository/src/swagger_generated_code/swagger.swagger.dart';
import 'package:hive/hive.dart';
import 'package:rxdart/rxdart.dart';

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
      baseUrl: 'https://kubak-todo.loca.lt',
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
  }

  final box = Hive.box<dynamic>(settingsBoxName);
  late final ChopperClient chopperClient;
  final _controller = BehaviorSubject<Status>();

  Stream<Status> get status async* {
    yield* _controller.asBroadcastStream();
  }

  void dispose() => _controller.close();

  Future<List<Todo>?> getTodos(DateTime from, DateTime to) async {
    final todosService = chopperClient.getService<Swagger>();

    final res = await todosService.todosGet(
      from: from.toIso8601String(),
      to: to.toIso8601String(),
    );

    if (res.isSuccessful) {
      return res.body!.map((e) => e.copyWith(date: e.date!.toLocal())).toList();
    } else {
      throw Exception(_extractTitleFromError(res.error));
    }
  }

  Future<Todo> createTodo(Todo todo) async {
    final todosService = chopperClient.getService<Swagger>();
    log('creating a todo ${todo.date!.toIso8601String()}');

    final res = await todosService.todosPost(
      body: CreateTodo(
        title: todo.title,
        date: todo.date,
        isComplete: todo.isComplete,
        note: todo.note,
      ),
    );

    if (res.isSuccessful) {
      log('ceated a todo');
      return res.body!;
    } else {
      log('creating todo failed');
      throw Exception(_extractTitleFromError(res.error));
    }
  }

  String _extractTitleFromError(Object? error) {
    if (error != null) {
      return (jsonDecode(error as String) as Map<String, dynamic>)['title']
          as String;
    }
    return 'unknown error';
  }

  Future<bool> deleteTodo(String id) async {
    final todosService = chopperClient.getService<Swagger>();

    final res = await todosService.todosIdDelete(id: id);

    if (res.isSuccessful) {
      return true;
    } else {
      throw Exception(_extractTitleFromError(res.error));
    }
  }

  Future<Todo> updateTodo(Todo todo) async {
    final todosService = chopperClient.getService<Swagger>();
    log('updating a todo');

    final res = await todosService.todosIdPut(
      id: todo.id,
      body: CreateTodo(
        title: todo.title,
        date: todo.date,
        note: todo.note,
        isComplete: todo.isComplete,
      ),
    );

    if (res.isSuccessful) {
      log('updated a todo');
      return res.body!;
    } else {
      log('update failed');
      throw Exception(_extractTitleFromError(res.error));
    }
  }

  Future<Todo> getTodo(String id) async {
    final todosService = chopperClient.getService<Swagger>();
    log('getting a todo');

    final res = await todosService.todosIdGet(id: id);

    if (res.isSuccessful) {
      log('got a todo ${res.body!.date!.toIso8601String()}');
      return res.body!.copyWith(date: res.body!.date!.toLocal());
    } else {
      log('getting todo failed');
      throw Exception(_extractTitleFromError(res.error));
    }
  }
}
