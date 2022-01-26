import 'swagger.models.swagger.dart';
import 'package:chopper/chopper.dart';
import 'client_mapping.dart';
import 'package:chopper/chopper.dart' as chopper;
export 'swagger.models.swagger.dart';

part 'swagger.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Swagger extends ChopperService {
  static Swagger create({ChopperClient? client, String? baseUrl}) {
    if (client != null) {
      return _$Swagger(client);
    }

    final newClient = ChopperClient(
        services: [_$Swagger()],
        converter: $JsonSerializableConverter(),
        baseUrl: baseUrl ?? 'http://');
    return _$Swagger(newClient);
  }

  ///
  ///@param From
  ///@param To
  ///@param IsComplete
  Future<chopper.Response<List<Todo>>> todosGet(
      {String? from, String? to, bool? isComplete}) {
    generatedMapping.putIfAbsent(Todo, () => Todo.fromJsonFactory);

    return _todosGet(from: from, to: to, isComplete: isComplete);
  }

  ///
  ///@param From
  ///@param To
  ///@param IsComplete
  @Get(path: '/todos')
  Future<chopper.Response<List<Todo>>> _todosGet(
      {@Query('From') String? from,
      @Query('To') String? to,
      @Query('IsComplete') bool? isComplete});

  ///
  Future<chopper.Response<Todo>> todosPost({required CreateTodo? body}) {
    generatedMapping.putIfAbsent(Todo, () => Todo.fromJsonFactory);

    return _todosPost(body: body);
  }

  ///
  @Post(path: '/todos')
  Future<chopper.Response<Todo>> _todosPost(
      {@Body() required CreateTodo? body});

  ///
  ///@param id
  Future<chopper.Response<Todo>> todosIdGet({required String? id}) {
    generatedMapping.putIfAbsent(Todo, () => Todo.fromJsonFactory);

    return _todosIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/todos/{id}')
  Future<chopper.Response<Todo>> _todosIdGet({@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<Todo>> todosIdPut(
      {required String? id, required CreateTodo? body}) {
    generatedMapping.putIfAbsent(Todo, () => Todo.fromJsonFactory);

    return _todosIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/todos/{id}')
  Future<chopper.Response<Todo>> _todosIdPut(
      {@Path('id') required String? id, @Body() required CreateTodo? body});

  ///
  ///@param id
  Future<chopper.Response> todosIdDelete({required String? id}) {
    return _todosIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/todos/{id}')
  Future<chopper.Response> _todosIdDelete({@Path('id') required String? id});
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  chopper.Response<ResultType> convertResponse<ResultType, Item>(
      chopper.Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}
