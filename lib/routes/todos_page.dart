import 'package:flutter/material.dart';
import 'package:todo_app_routes_example/model/todo.dart';

import 'info_page.dart';

class TodosPage extends StatelessWidget {
  const TodosPage();

  // Some todos to show on the screen
  final List<Todo> todos = const [
    Todo(title: 'Item 1', description: 'First to-do of the list'),
    Todo(title: 'Item 2', description: 'Second to-do of the list'),
    Todo(title: 'Item 3', description: 'Third to-do of the list'),
  ];

  // In the 'TodosPage' widget, send data to 'InfoPage'
  void _itemPressed(BuildContext context, Todo item) =>
      Navigator.of(context)?.push(MaterialPageRoute(
        builder: (context) => InfoPage(todo: item),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () => _itemPressed(context, todos[index]),
          );
        },
      ),
    );
  }
}
