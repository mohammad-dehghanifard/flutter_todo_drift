import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'database.g.dart';

class TodoItem extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 6,max: 16)();
  TextColumn get content => text().named("body")();
  IntColumn get categoryId => integer().references(CategoryItem,#id)();
  DateTimeColumn get date => dateTime().nullable()();
  BoolColumn  get isDone => boolean().withDefault(const Constant(false))();
}

class CategoryItem extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 6,max: 16)();
}

@DriftDatabase(tables: [TodoItem,CategoryItem])
class AppDataBase extends _$AppDataBase{
  AppDataBase() : super(_openConnection());

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from < 2) {
          await m.addColumn(todoItem, todoItem.isDone as GeneratedColumn<Object>);
        }
      },
    );
  }

  @override
  int get schemaVersion => 2;


  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'todos');
  }
}