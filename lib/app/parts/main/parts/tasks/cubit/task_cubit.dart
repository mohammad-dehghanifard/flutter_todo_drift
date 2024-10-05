import 'package:bloc/bloc.dart';
import 'package:flutter_todo_drift/database/database_helper.dart';
import 'package:meta/meta.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());

  Future<void> addTask({required String title,required String content}) async {
    emit(TaskLoadingState());
    await DataBaseHelper.insertTodo(title: title, content: content);
    emit(TaskSuccessState());
  }
}
