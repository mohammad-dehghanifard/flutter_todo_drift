import 'package:flutter/material.dart';
import 'package:flutter_todo_drift/database/database.dart';
import 'package:flutter_todo_drift/database/database_helper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DataBaseHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

