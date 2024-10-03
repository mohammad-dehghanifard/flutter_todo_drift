import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo_drift/app/parts/main/cubit/main_cubit.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},),
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
                  return ListView.builder(
                    itemCount: state.todos.length,
                    itemBuilder: (context, index) {
                      return  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(state.todos[index].title),
                          Text(state.todos[index].content),
                          const Divider()
                        ],
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
