// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $CategoryItemTable extends CategoryItem
    with TableInfo<$CategoryItemTable, CategoryItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoryItemTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 6, maxTextLength: 16),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, title];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'category_item';
  @override
  VerificationContext validateIntegrity(Insertable<CategoryItemData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CategoryItemData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoryItemData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
    );
  }

  @override
  $CategoryItemTable createAlias(String alias) {
    return $CategoryItemTable(attachedDatabase, alias);
  }
}

class CategoryItemData extends DataClass
    implements Insertable<CategoryItemData> {
  final int id;
  final String title;
  const CategoryItemData({required this.id, required this.title});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    return map;
  }

  CategoryItemCompanion toCompanion(bool nullToAbsent) {
    return CategoryItemCompanion(
      id: Value(id),
      title: Value(title),
    );
  }

  factory CategoryItemData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoryItemData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
    };
  }

  CategoryItemData copyWith({int? id, String? title}) => CategoryItemData(
        id: id ?? this.id,
        title: title ?? this.title,
      );
  CategoryItemData copyWithCompanion(CategoryItemCompanion data) {
    return CategoryItemData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CategoryItemData(')
          ..write('id: $id, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoryItemData &&
          other.id == this.id &&
          other.title == this.title);
}

class CategoryItemCompanion extends UpdateCompanion<CategoryItemData> {
  final Value<int> id;
  final Value<String> title;
  const CategoryItemCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
  });
  CategoryItemCompanion.insert({
    this.id = const Value.absent(),
    required String title,
  }) : title = Value(title);
  static Insertable<CategoryItemData> custom({
    Expression<int>? id,
    Expression<String>? title,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
    });
  }

  CategoryItemCompanion copyWith({Value<int>? id, Value<String>? title}) {
    return CategoryItemCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoryItemCompanion(')
          ..write('id: $id, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }
}

class $TodoItemTable extends TodoItem
    with TableInfo<$TodoItemTable, TodoItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TodoItemTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 6, maxTextLength: 16),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'body', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES category_item (id)'));
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, title, content, categoryId, date];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'todo_item';
  @override
  VerificationContext validateIntegrity(Insertable<TodoItemData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('body')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['body']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TodoItemData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TodoItemData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}body'])!,
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date']),
    );
  }

  @override
  $TodoItemTable createAlias(String alias) {
    return $TodoItemTable(attachedDatabase, alias);
  }
}

class TodoItemData extends DataClass implements Insertable<TodoItemData> {
  final int id;
  final String title;
  final String content;
  final int categoryId;
  final DateTime? date;
  const TodoItemData(
      {required this.id,
      required this.title,
      required this.content,
      required this.categoryId,
      this.date});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['body'] = Variable<String>(content);
    map['category_id'] = Variable<int>(categoryId);
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<DateTime>(date);
    }
    return map;
  }

  TodoItemCompanion toCompanion(bool nullToAbsent) {
    return TodoItemCompanion(
      id: Value(id),
      title: Value(title),
      content: Value(content),
      categoryId: Value(categoryId),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
    );
  }

  factory TodoItemData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TodoItemData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      date: serializer.fromJson<DateTime?>(json['date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'categoryId': serializer.toJson<int>(categoryId),
      'date': serializer.toJson<DateTime?>(date),
    };
  }

  TodoItemData copyWith(
          {int? id,
          String? title,
          String? content,
          int? categoryId,
          Value<DateTime?> date = const Value.absent()}) =>
      TodoItemData(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        categoryId: categoryId ?? this.categoryId,
        date: date.present ? date.value : this.date,
      );
  TodoItemData copyWithCompanion(TodoItemCompanion data) {
    return TodoItemData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      content: data.content.present ? data.content.value : this.content,
      categoryId:
          data.categoryId.present ? data.categoryId.value : this.categoryId,
      date: data.date.present ? data.date.value : this.date,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TodoItemData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('categoryId: $categoryId, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, content, categoryId, date);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TodoItemData &&
          other.id == this.id &&
          other.title == this.title &&
          other.content == this.content &&
          other.categoryId == this.categoryId &&
          other.date == this.date);
}

class TodoItemCompanion extends UpdateCompanion<TodoItemData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> content;
  final Value<int> categoryId;
  final Value<DateTime?> date;
  const TodoItemCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.date = const Value.absent(),
  });
  TodoItemCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String content,
    required int categoryId,
    this.date = const Value.absent(),
  })  : title = Value(title),
        content = Value(content),
        categoryId = Value(categoryId);
  static Insertable<TodoItemData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? content,
    Expression<int>? categoryId,
    Expression<DateTime>? date,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (content != null) 'body': content,
      if (categoryId != null) 'category_id': categoryId,
      if (date != null) 'date': date,
    });
  }

  TodoItemCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? content,
      Value<int>? categoryId,
      Value<DateTime?>? date}) {
    return TodoItemCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      categoryId: categoryId ?? this.categoryId,
      date: date ?? this.date,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['body'] = Variable<String>(content.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodoItemCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('categoryId: $categoryId, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDataBase extends GeneratedDatabase {
  _$AppDataBase(QueryExecutor e) : super(e);
  $AppDataBaseManager get managers => $AppDataBaseManager(this);
  late final $CategoryItemTable categoryItem = $CategoryItemTable(this);
  late final $TodoItemTable todoItem = $TodoItemTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [categoryItem, todoItem];
}

typedef $$CategoryItemTableCreateCompanionBuilder = CategoryItemCompanion
    Function({
  Value<int> id,
  required String title,
});
typedef $$CategoryItemTableUpdateCompanionBuilder = CategoryItemCompanion
    Function({
  Value<int> id,
  Value<String> title,
});

final class $$CategoryItemTableReferences extends BaseReferences<_$AppDataBase,
    $CategoryItemTable, CategoryItemData> {
  $$CategoryItemTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TodoItemTable, List<TodoItemData>>
      _todoItemRefsTable(_$AppDataBase db) => MultiTypedResultKey.fromTable(
          db.todoItem,
          aliasName:
              $_aliasNameGenerator(db.categoryItem.id, db.todoItem.categoryId));

  $$TodoItemTableProcessedTableManager get todoItemRefs {
    final manager = $$TodoItemTableTableManager($_db, $_db.todoItem)
        .filter((f) => f.categoryId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_todoItemRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$CategoryItemTableFilterComposer
    extends FilterComposer<_$AppDataBase, $CategoryItemTable> {
  $$CategoryItemTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter todoItemRefs(
      ComposableFilter Function($$TodoItemTableFilterComposer f) f) {
    final $$TodoItemTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.todoItem,
        getReferencedColumn: (t) => t.categoryId,
        builder: (joinBuilder, parentComposers) =>
            $$TodoItemTableFilterComposer(ComposerState(
                $state.db, $state.db.todoItem, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$CategoryItemTableOrderingComposer
    extends OrderingComposer<_$AppDataBase, $CategoryItemTable> {
  $$CategoryItemTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$CategoryItemTableTableManager extends RootTableManager<
    _$AppDataBase,
    $CategoryItemTable,
    CategoryItemData,
    $$CategoryItemTableFilterComposer,
    $$CategoryItemTableOrderingComposer,
    $$CategoryItemTableCreateCompanionBuilder,
    $$CategoryItemTableUpdateCompanionBuilder,
    (CategoryItemData, $$CategoryItemTableReferences),
    CategoryItemData,
    PrefetchHooks Function({bool todoItemRefs})> {
  $$CategoryItemTableTableManager(_$AppDataBase db, $CategoryItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CategoryItemTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CategoryItemTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
          }) =>
              CategoryItemCompanion(
            id: id,
            title: title,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
          }) =>
              CategoryItemCompanion.insert(
            id: id,
            title: title,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CategoryItemTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({todoItemRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (todoItemRefs) db.todoItem],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (todoItemRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$CategoryItemTableReferences
                            ._todoItemRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$CategoryItemTableReferences(db, table, p0)
                                .todoItemRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.categoryId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$CategoryItemTableProcessedTableManager = ProcessedTableManager<
    _$AppDataBase,
    $CategoryItemTable,
    CategoryItemData,
    $$CategoryItemTableFilterComposer,
    $$CategoryItemTableOrderingComposer,
    $$CategoryItemTableCreateCompanionBuilder,
    $$CategoryItemTableUpdateCompanionBuilder,
    (CategoryItemData, $$CategoryItemTableReferences),
    CategoryItemData,
    PrefetchHooks Function({bool todoItemRefs})>;
typedef $$TodoItemTableCreateCompanionBuilder = TodoItemCompanion Function({
  Value<int> id,
  required String title,
  required String content,
  required int categoryId,
  Value<DateTime?> date,
});
typedef $$TodoItemTableUpdateCompanionBuilder = TodoItemCompanion Function({
  Value<int> id,
  Value<String> title,
  Value<String> content,
  Value<int> categoryId,
  Value<DateTime?> date,
});

final class $$TodoItemTableReferences
    extends BaseReferences<_$AppDataBase, $TodoItemTable, TodoItemData> {
  $$TodoItemTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CategoryItemTable _categoryIdTable(_$AppDataBase db) =>
      db.categoryItem.createAlias(
          $_aliasNameGenerator(db.todoItem.categoryId, db.categoryItem.id));

  $$CategoryItemTableProcessedTableManager? get categoryId {
    if ($_item.categoryId == null) return null;
    final manager = $$CategoryItemTableTableManager($_db, $_db.categoryItem)
        .filter((f) => f.id($_item.categoryId!));
    final item = $_typedResult.readTableOrNull(_categoryIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$TodoItemTableFilterComposer
    extends FilterComposer<_$AppDataBase, $TodoItemTable> {
  $$TodoItemTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$CategoryItemTableFilterComposer get categoryId {
    final $$CategoryItemTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.categoryId,
        referencedTable: $state.db.categoryItem,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$CategoryItemTableFilterComposer(ComposerState($state.db,
                $state.db.categoryItem, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$TodoItemTableOrderingComposer
    extends OrderingComposer<_$AppDataBase, $TodoItemTable> {
  $$TodoItemTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$CategoryItemTableOrderingComposer get categoryId {
    final $$CategoryItemTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.categoryId,
        referencedTable: $state.db.categoryItem,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$CategoryItemTableOrderingComposer(ComposerState($state.db,
                $state.db.categoryItem, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$TodoItemTableTableManager extends RootTableManager<
    _$AppDataBase,
    $TodoItemTable,
    TodoItemData,
    $$TodoItemTableFilterComposer,
    $$TodoItemTableOrderingComposer,
    $$TodoItemTableCreateCompanionBuilder,
    $$TodoItemTableUpdateCompanionBuilder,
    (TodoItemData, $$TodoItemTableReferences),
    TodoItemData,
    PrefetchHooks Function({bool categoryId})> {
  $$TodoItemTableTableManager(_$AppDataBase db, $TodoItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TodoItemTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$TodoItemTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<int> categoryId = const Value.absent(),
            Value<DateTime?> date = const Value.absent(),
          }) =>
              TodoItemCompanion(
            id: id,
            title: title,
            content: content,
            categoryId: categoryId,
            date: date,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            required String content,
            required int categoryId,
            Value<DateTime?> date = const Value.absent(),
          }) =>
              TodoItemCompanion.insert(
            id: id,
            title: title,
            content: content,
            categoryId: categoryId,
            date: date,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$TodoItemTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({categoryId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (categoryId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.categoryId,
                    referencedTable:
                        $$TodoItemTableReferences._categoryIdTable(db),
                    referencedColumn:
                        $$TodoItemTableReferences._categoryIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$TodoItemTableProcessedTableManager = ProcessedTableManager<
    _$AppDataBase,
    $TodoItemTable,
    TodoItemData,
    $$TodoItemTableFilterComposer,
    $$TodoItemTableOrderingComposer,
    $$TodoItemTableCreateCompanionBuilder,
    $$TodoItemTableUpdateCompanionBuilder,
    (TodoItemData, $$TodoItemTableReferences),
    TodoItemData,
    PrefetchHooks Function({bool categoryId})>;

class $AppDataBaseManager {
  final _$AppDataBase _db;
  $AppDataBaseManager(this._db);
  $$CategoryItemTableTableManager get categoryItem =>
      $$CategoryItemTableTableManager(_db, _db.categoryItem);
  $$TodoItemTableTableManager get todoItem =>
      $$TodoItemTableTableManager(_db, _db.todoItem);
}
