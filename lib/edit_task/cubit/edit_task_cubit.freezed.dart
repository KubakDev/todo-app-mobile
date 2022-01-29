// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_task_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditTaskStateTearOff {
  const _$EditTaskStateTearOff();

  _EditTaskState call(
      {required Todo todo,
      bool isLoading = false,
      bool isEditing = false,
      bool isFinished = false,
      bool isFinishing = false,
      String? error}) {
    return _EditTaskState(
      todo: todo,
      isLoading: isLoading,
      isEditing: isEditing,
      isFinished: isFinished,
      isFinishing: isFinishing,
      error: error,
    );
  }
}

/// @nodoc
const $EditTaskState = _$EditTaskStateTearOff();

/// @nodoc
mixin _$EditTaskState {
  Todo get todo => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;
  bool get isFinishing => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditTaskStateCopyWith<EditTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTaskStateCopyWith<$Res> {
  factory $EditTaskStateCopyWith(
          EditTaskState value, $Res Function(EditTaskState) then) =
      _$EditTaskStateCopyWithImpl<$Res>;
  $Res call(
      {Todo todo,
      bool isLoading,
      bool isEditing,
      bool isFinished,
      bool isFinishing,
      String? error});
}

/// @nodoc
class _$EditTaskStateCopyWithImpl<$Res>
    implements $EditTaskStateCopyWith<$Res> {
  _$EditTaskStateCopyWithImpl(this._value, this._then);

  final EditTaskState _value;
  // ignore: unused_field
  final $Res Function(EditTaskState) _then;

  @override
  $Res call({
    Object? todo = freezed,
    Object? isLoading = freezed,
    Object? isEditing = freezed,
    Object? isFinished = freezed,
    Object? isFinishing = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinished: isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinishing: isFinishing == freezed
          ? _value.isFinishing
          : isFinishing // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EditTaskStateCopyWith<$Res>
    implements $EditTaskStateCopyWith<$Res> {
  factory _$EditTaskStateCopyWith(
          _EditTaskState value, $Res Function(_EditTaskState) then) =
      __$EditTaskStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Todo todo,
      bool isLoading,
      bool isEditing,
      bool isFinished,
      bool isFinishing,
      String? error});
}

/// @nodoc
class __$EditTaskStateCopyWithImpl<$Res>
    extends _$EditTaskStateCopyWithImpl<$Res>
    implements _$EditTaskStateCopyWith<$Res> {
  __$EditTaskStateCopyWithImpl(
      _EditTaskState _value, $Res Function(_EditTaskState) _then)
      : super(_value, (v) => _then(v as _EditTaskState));

  @override
  _EditTaskState get _value => super._value as _EditTaskState;

  @override
  $Res call({
    Object? todo = freezed,
    Object? isLoading = freezed,
    Object? isEditing = freezed,
    Object? isFinished = freezed,
    Object? isFinishing = freezed,
    Object? error = freezed,
  }) {
    return _then(_EditTaskState(
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinished: isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinishing: isFinishing == freezed
          ? _value.isFinishing
          : isFinishing // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_EditTaskState implements _EditTaskState {
  const _$_EditTaskState(
      {required this.todo,
      this.isLoading = false,
      this.isEditing = false,
      this.isFinished = false,
      this.isFinishing = false,
      this.error});

  @override
  final Todo todo;
  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isEditing;
  @JsonKey()
  @override
  final bool isFinished;
  @JsonKey()
  @override
  final bool isFinishing;
  @override
  final String? error;

  @override
  String toString() {
    return 'EditTaskState(todo: $todo, isLoading: $isLoading, isEditing: $isEditing, isFinished: $isFinished, isFinishing: $isFinishing, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditTaskState &&
            const DeepCollectionEquality().equals(other.todo, todo) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality()
                .equals(other.isFinished, isFinished) &&
            const DeepCollectionEquality()
                .equals(other.isFinishing, isFinishing) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(todo),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isFinished),
      const DeepCollectionEquality().hash(isFinishing),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$EditTaskStateCopyWith<_EditTaskState> get copyWith =>
      __$EditTaskStateCopyWithImpl<_EditTaskState>(this, _$identity);
}

abstract class _EditTaskState implements EditTaskState {
  const factory _EditTaskState(
      {required Todo todo,
      bool isLoading,
      bool isEditing,
      bool isFinished,
      bool isFinishing,
      String? error}) = _$_EditTaskState;

  @override
  Todo get todo;
  @override
  bool get isLoading;
  @override
  bool get isEditing;
  @override
  bool get isFinished;
  @override
  bool get isFinishing;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$EditTaskStateCopyWith<_EditTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}
