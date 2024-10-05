import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo_drift/app/parts/main/cubit/main_cubit.dart';
import 'package:flutter_todo_drift/app/parts/main/parts/tasks/screens/add_or_edit_task_screen.dart';
import 'package:flutter_todo_drift/database/database.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.push(context,CupertinoPageRoute(builder: (context) => const AddOrEditTaskScreen(),)),),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: BlocBuilder<MainCubit, MainState>(
              builder: (context, state) {
                if(state is MainLoading) {
                  return const SizedBox(
                    width: double.infinity,
                      height: double.infinity,
                      child: Center(child: CircularProgressIndicator()));
                }
                else if(state is MainLoadTodoListSuccess) {
                  return StreamBuilder<List<TodoItemData>>(
                    stream: BlocProvider.of<MainCubit>(context).streamTask(),
                    builder: (BuildContext context, AsyncSnapshot<List<TodoItemData>> snapshot) {
                      final todos = snapshot.data ?? state.todos;
                      return ListView.builder(
                        itemCount: todos.length,
                        itemBuilder: (context, index) {
                          return  Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(todos[index].title),
                                      Text(todos[index].content),

                                    ],
                                  ),
                                  const Spacer(),
                                // delete
                                IconButton(
                                  onPressed: () {
                                    BlocProvider.of<MainCubit>(context).deleteTask(taskId: todos[index].id);
                                    print(todos[index].id);
                                  },
                                  icon: const Icon(
                                    CupertinoIcons.delete_solid,
                                    color: CupertinoColors.destructiveRed,
                                  )),
                                // edit
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    CupertinoIcons.pencil,
                                    color: CupertinoColors.activeBlue,
                                  )),
                            ],
                              ),
                              const Divider()
                            ],
                          );
                        },
                      );
                    },
                  );
                } else if(state is MainLoadTodoListIsEmpty) {
                  return const Center(child: Text("list is empty"));
                } else {
                  return Container();
                }
              },
            ),
          )
      ),
    );
  }
}
