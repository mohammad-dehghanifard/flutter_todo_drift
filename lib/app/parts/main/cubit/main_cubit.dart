import 'package:bloc/bloc.dart';
import 'package:flutter_todo_drift/database/database.dart';
import 'package:flutter_todo_drift/database/database_helper.dart';
import 'package:meta/meta.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  Future<void> getAllData() async {
    emit(MainLoading());
    final List<TodoItemData> todoList = await DataBaseHelper.getAllTasks();
    if(todoList.isNotEmpty) {
      emit(MainLoadTodoListSuccess(todos: todoList));
    } else {
      emit(MainLoadTodoListIsEmpty());
    }
  }


  void deleteTask({required int taskId}) => DataBaseHelper.deleteTask(id: taskId);

  void changeTaskStatus({required int taskId,required bool newStatus}) {
    DataBaseHelper.changeTaskStatus(id: taskId, newStatus: newStatus);
    emit(MainChangeTaskStatus(taskStatus: newStatus));
  }
}
