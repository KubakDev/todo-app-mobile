part of 'home_bloc.dart';

enum TodoFilter { all, active, completed }

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(<Todo>[]) List<Todo> todos,
    @Default(<DateTime>{}) Set<DateTime> datesWithTodos,
    @Default(TodoFilter.all) TodoFilter filter,
    required DateTime selectedDate,
    @Default(<Todo>[]) List<Todo> toBeDeletedTodos,
    String? error,
    @Default(false) bool isLoading,
  }) = _HomeState;

  // will start a delete debouce then if we cancel it
  // the debouce with this todo id will be canceled
  // !but check if there is no todo left in this when we exit the app or page
}
