import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo_drift/app/parts/main/cubit/main_cubit.dart';
import 'package:flutter_todo_drift/app/screens/app_view.dart';
import 'package:flutter_todo_drift/database/database.dart';
import 'package:flutter_todo_drift/database/database_helper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DataBaseHelper.init();
  runApp(
    MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => MainCubit())
        ],
        child: const AppView())
  );
}



