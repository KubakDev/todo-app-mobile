//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_todo.g.dart';

/// CreateTodo
///
/// Properties:
/// * [title] 
/// * [note] 
/// * [date] 
/// * [isComplete] 
abstract class CreateTodo implements Built<CreateTodo, CreateTodoBuilder> {
    @BuiltValueField(wireName: r'title')
    String? get title;

    @BuiltValueField(wireName: r'note')
    String? get note;

    @BuiltValueField(wireName: r'date')
    DateTime? get date;

    @BuiltValueField(wireName: r'isComplete')
    bool? get isComplete;

    CreateTodo._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CreateTodoBuilder b) => b;

    factory CreateTodo([void updates(CreateTodoBuilder b)]) = _$CreateTodo;

    @BuiltValueSerializer(custom: true)
    static Serializer<CreateTodo> get serializer => _$CreateTodoSerializer();
}

class _$CreateTodoSerializer implements StructuredSerializer<CreateTodo> {
    @override
    final Iterable<Type> types = const [CreateTodo, _$CreateTodo];

    @override
    final String wireName = r'CreateTodo';

    @override
    Iterable<Object?> serialize(Serializers serializers, CreateTodo object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.note != null) {
            result
                ..add(r'note')
                ..add(serializers.serialize(object.note,
                    specifiedType: const FullType.nullable(String)));
        }
        if (object.date != null) {
            result
                ..add(r'date')
                ..add(serializers.serialize(object.date,
                    specifiedType: const FullType(DateTime)));
        }
        if (object.isComplete != null) {
            result
                ..add(r'isComplete')
                ..add(serializers.serialize(object.isComplete,
                    specifiedType: const FullType(bool)));
        }
        return result;
    }

    @override
    CreateTodo deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CreateTodoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'title':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.title = valueDes;
                    break;
                case r'note':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType.nullable(String)) as String?;
                    if (valueDes == null) continue;
                    result.note = valueDes;
                    break;
                case r'date':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    result.date = valueDes;
                    break;
                case r'isComplete':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.isComplete = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

