import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'todo_list_model.dart';

class AddTodoView extends StatefulWidget {
  const AddTodoView({super.key});

  @override
  State<AddTodoView> createState() => _AddTodoViewState();
}

class _AddTodoViewState extends State<AddTodoView> {
  bool _isEditing = false;
  late final TextEditingController _controller = TextEditingController();

  Widget _buildEditingView() {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              autofocus: true,
              style: const TextStyle(
                color: Color(0xFF000000),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              cursorColor: const Color(0xFF000000),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _isEditing = false;
              });
              final model = Provider.of<TodoListModel>(context, listen: false);
              model.addTodo(_controller.text);
            },
            child: const Text(
              'Done',
              style: TextStyle(
                color: Color(0xFF0000FF),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isEditing = true;
        });
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

  @override
  Widget build(BuildContext context) {
    if (_isEditing) {
      return _buildEditingView();
    } else {
      return _buildAddButton();
    }
  }
}
