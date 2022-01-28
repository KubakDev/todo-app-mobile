part of 'edit_task_cubit.dart';

@freezed
class EditTaskState with _$EditTaskState {
  const factory EditTaskState({
    required Todo todo,
    @Default(false) bool isLoading,
    @Default(false) bool isEditing,
    @Default(false) bool isFinished,
    @Default(false) bool isFinishing,
    String? error,
  }) = _EditTaskState;
}
