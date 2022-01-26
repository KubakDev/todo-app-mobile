//Generated code

part of 'swagger.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$Swagger extends Swagger {
  _$Swagger([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Swagger;

  @override
  Future<Response<List<Todo>>> _todosGet(
      {String? from, String? to, bool? isComplete}) {
    final $url = '/todos';
    final $params = <String, dynamic>{
      'From': from,
      'To': to,
      'IsComplete': isComplete
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<Todo>, Todo>($request);
  }

  @override
  Future<Response<Todo>> _todosPost({required CreateTodo? body}) {
    final $url = '/todos';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Todo, Todo>($request);
  }

  @override
  Future<Response<Todo>> _todosIdGet({required String? id}) {
    final $url = '/todos/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Todo, Todo>($request);
  }

  @override
  Future<Response<Todo>> _todosIdPut(
      {required String? id, required CreateTodo? body}) {
    final $url = '/todos/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<Todo, Todo>($request);
  }

  @override
  Future<Response<dynamic>> _todosIdDelete({required String? id}) {
    final $url = '/todos/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
