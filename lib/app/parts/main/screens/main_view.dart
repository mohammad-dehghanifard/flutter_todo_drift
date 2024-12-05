import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo_drift/app/parts/main/cubit/main_cubit.dart';
import 'package:flutter_todo_drift/app/parts/main/parts/tasks/screens/add_or_edit_task_screen.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}


class _MainViewState extends State<MainView> {

  @override
  void initState() {
    BlocProvider.of<MainCubit>(context).getAllData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mainCubit = context.watch<MainCubit>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.push(context,CupertinoPageRoute(builder: (context) => const AddOrEditTaskScreen(),)),),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: BlocBuilder<MainCubit, MainState>(
              builder: (context, state) {
                if(state.hasLoading) {
                  return const SizedBox(
                    width: double.infinity,
                      height: double.infinity,
                      child: Center(child: CircularProgressIndicator()));
                }

                return  ListView.builder(
                  itemCount: state.todos.length,
                  itemBuilder: (context, index) {
                    final todos = state.todos;
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
                            Checkbox(
                                value: todos[index].isDone,
                                onChanged: (value) {
                                  mainCubit.changeTaskStatus(taskId: todos[index].id, newStatus: value ?? false);
                                }
                            ),
                            // delete
                            IconButton(
                                onPressed: () {
                                  BlocProvider.of<MainCubit>(context).deleteTask(taskId: todos[index].id);
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
            ),
          )
      ),
    );
  }
}
