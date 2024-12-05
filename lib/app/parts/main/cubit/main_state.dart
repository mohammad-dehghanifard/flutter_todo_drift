part of 'main_cubit.dart';


class MainState {
  MainState({required this.todos, required this.hasLoading});
  final List<TodoItemData> todos;
  final bool hasLoading;


  MainState copyWith({List<TodoItemData>? newTodosList, bool? newLoading}) {
    return MainState(
        todos: newTodosList ?? todos,
        hasLoading : newLoading ?? hasLoading);
  }
}



