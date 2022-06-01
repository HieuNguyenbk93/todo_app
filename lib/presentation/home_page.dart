import 'package:flutter/material.dart';
import 'package:todo_app/data/todo.model.dart';

final todoList = [
  Todo(title: 'Do something 1'),
  Todo(title: 'Do something 2'),
  Todo(title: 'Do something 3'),
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView(
            children: todoList.map(
              (e) => Card(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text(e.title)
                )
              )
            ).toList(),
          ),
        ),
      ),
    );
  }
}