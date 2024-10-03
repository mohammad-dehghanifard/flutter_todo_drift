import 'package:flutter_todo_drift/database/database.dart';

class DataBaseHelper {

  static late final AppDataBase appDatabase;

  static Future<void> init() async {
      appDatabase = AppDataBase();
  }
}