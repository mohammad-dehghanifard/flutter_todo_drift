import 'package:drift/drift.dart';

part 'database.g.dart';

class TodoItem extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 6,max: 16)();
  TextColumn get content => text().named("body")();
  IntColumn get categoryId => integer().references(CategoryItem,#id)();
  DateTimeColumn get date => dateTime().nullable()();
}

class CategoryItem extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 6,max: 16)();
}

@DriftDatabase(tables: [TodoItem,CategoryItem])
class AppDataBase extends _$AppDataBase{
  AppDataBase(super.e);

  @override
  int get schemaVersion => 1;
}