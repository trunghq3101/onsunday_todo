import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'todo_list_model.dart';

class TodoListView extends StatefulWidget {
  const TodoListView({super.key});

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoListModel>(
      builder: (context, value, child) {
        return ListView(
          children: [
            ...value.todos.map(
              (todo) => Container(
                margin: const EdgeInsets.only(top: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value: todo.isDone,
                      onChanged: (isDone) {
                        value.toggleIsDone(todo.id);
                      },
                    ),
                    Expanded(
                      child: Text(
                        todo.title,
                        style: const TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        value.remove(todo.id);
                      },
                      child: const Icon(
                        Icons.delete,
                        color: Color(0xFFAF4949),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
