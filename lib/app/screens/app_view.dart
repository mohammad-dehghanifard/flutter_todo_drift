import 'package:flutter/material.dart';
import 'package:flutter_todo_drift/app/parts/main/screens/main_page.dart';
import 'package:flutter_todo_drift/app/parts/main/screens/main_view.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}