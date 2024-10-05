part of 'task_cubit.dart';

@immutable
sealed class TaskState {}

final class TaskInitial extends TaskState {}

final class TaskLoadingState extends TaskState {}

final class TaskSuccessState extends TaskState {}
