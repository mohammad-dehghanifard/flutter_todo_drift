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

  static Future<void> insertTodo({required String title,required String content}) async {
    final result = await appDatabase.into(appDatabase.todoItem).insert(TodoItemCompanion.insert(
        title: title,
        content: content,
        categoryId: 0)
    );

  }

  static void deleteTask({required int id}) async {

    final query = appDatabase.delete(appDatabase.todoItem)..where((tbl) => tbl.id.equals(id));
    await query.go();
  }



  static Stream<List<TodoItemData>> getTaskStream() {
    return appDatabase.select(appDatabase.todoItem).watch();
  }
}