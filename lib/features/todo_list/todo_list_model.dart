import 'package:flutter/widgets.dart';

class TodoListModel extends ChangeNotifier {
  final List<String> _todos = [];

  List<String> get todos => List.unmodifiable(_todos);

  void addTodo(String title) {
    _todos.add(title);
    notifyListeners();
  }
}
