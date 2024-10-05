import 'package:bloc/bloc.dart';
import 'package:flutter_todo_drift/database/database.dart';
import 'package:flutter_todo_drift/database/database_helper.dart';
import 'package:meta/meta.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  void getAllData() async {
    emit(MainLoading());
    final List<TodoItemData> todoList = await DataBaseHelper.getAllTasks();
    if(todoList.isNotEmpty) {
      emit(MainLoadTodoListSuccess(todos: todoList));
    } else {
      emit(MainLoadTodoListIsEmpty());
    }
  }

  Stream<List<TodoItemData>> streamTask() => DataBaseHelper.getTaskStream();

  void deleteTask({required int taskId}) => DataBaseHelper.deleteTask(id: taskId);
}
