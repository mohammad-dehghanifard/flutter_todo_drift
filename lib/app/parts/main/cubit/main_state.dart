part of 'main_cubit.dart';

@immutable
sealed class MainState {}

final class MainInitial extends MainState {}

final class MainLoading extends MainState {}

final class MainLoadTodoListSuccess extends MainState {
  MainLoadTodoListSuccess({required this.todos});
  final List<TodoItemData> todos;
}

final class MainLoadTodoListIsEmpty extends MainState {}


