import 'package:flutter_todo_drift/database/database.dart';

class DataBaseHelper {

  static late final AppDataBase appDatabase;

  static Future<void> init() async {
      appDatabase = AppDataBase();
  }

  static Future<List<TodoItemData>>getAllTasks() async {
    final result = await appDatabase.select(appDatabase.todoItem).get();
    return result;
  }
}