import 'package:bloc/bloc.dart';
import 'package:flutter_todo_drift/database/database.dart';
import 'package:flutter_todo_drift/database/database_helper.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainState(todos: [], hasLoading: false));

  Future<void> getAllData() async {
    emit(state.copyWith(newLoading: true));
    final List<TodoItemData> todoList = await DataBaseHelper.getAllTasks();
    emit(state.copyWith(newTodosList: todoList,newLoading: false));
  }


  Future<void> deleteTask({required int taskId}) async {
    await DataBaseHelper.deleteTask(id: taskId);
    final List<TodoItemData> newTaskList = List.from(state.todos)..removeWhere((todo) => todo.id == taskId);
    emit(state.copyWith(newTodosList: newTaskList));
  }

  Future<void> changeTaskStatus({required int taskId,required bool newStatus}) async {
   await  DataBaseHelper.changeTaskStatus(id: taskId, newStatus: newStatus);
   final List<TodoItemData> list = await DataBaseHelper.getAllTasks();
   emit(state.copyWith(newTodosList: list));

  }
}
