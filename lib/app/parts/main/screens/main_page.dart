import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo_drift/app/parts/main/cubit/main_cubit.dart';
import 'package:flutter_todo_drift/app/parts/main/screens/main_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainCubit>(
        create: (_) => MainCubit()..getAllData(),
      child: const MainView(),
    );
  }
}
