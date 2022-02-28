import 'dart:async';
import 'package:database_repository/src/swagger_generated_code/swagger.swagger.dart';

const settingsBoxName = 'todo_settings';
enum Status {
  unauthorized,
}

abstract class DatabaseRepository {
  DatabaseRepository();
  Stream<Status> get status;

  void dispose();

  Future<List<Todo>?> getTodos({
    DateTime? from,
    DateTime? to,
    bool? isCompleted,
  });
  Future<Todo> createTodo(Todo todo);

  Future<bool> deleteTodo(String id);
  Future<Todo> updateTodo(Todo todo);
  Future<Todo> getTodo(String id);
}
