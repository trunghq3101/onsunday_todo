import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'todo_list_model.dart';

class AddTodoView extends StatelessWidget {
  const AddTodoView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final model = Provider.of<TodoListModel>(context, listen: false);
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
    );
  }
}
