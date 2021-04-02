import 'package:flutter/material.dart';
import 'package:todo_app_routes_example/model/todo.dart';

class InfoPage extends StatelessWidget {
  final Todo todo;
  const InfoPage({this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('${todo.description}'),
      ),
    );
  }
}
