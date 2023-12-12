import 'package:flutter/widgets.dart';
import 'package:onsunday_todo/features/todo_list/add_todo_view.dart';
import 'package:onsunday_todo/features/todo_list/todo_list_view.dart';
import 'package:provider/provider.dart';

import 'features/todo_list/todo_list_model.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoListModel(),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          color: const Color(0xFFAAAFFF),
          padding: const EdgeInsets.all(24),
          child: const Column(
            children: [
              Text(
                'To-do List app',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: TodoListView(),
              ),
              AddTodoView(),
            ],
          ),
        ),
      ),
    );
  }
}
