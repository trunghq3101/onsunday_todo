import 'package:flutter/widgets.dart';
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
      builder: (context, child) => Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          color: const Color(0xFFAAAFFF),
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Text(
                'To-do List app',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Consumer<TodoListModel>(
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
                            child: Text(
                              todo,
                              style: const TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  final model =
                      Provider.of<TodoListModel>(context, listen: false);
                  model.addTodo('New todo');
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 24),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFF0000FF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Add new todo',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
