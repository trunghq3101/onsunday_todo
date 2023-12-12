import 'package:flutter/widgets.dart';
import 'package:onsunday_todo/dto/todo.dart';

class TodoListModel extends ChangeNotifier {
  final List<Todo> _todos = [];

  List<Todo> get todos => List.unmodifiable(_todos);

  void addTodo(String title) {
    _todos.add(Todo(title: title));
    notifyListeners();
  }

  void remove(String id) {
    _todos.removeWhere((todo) => todo.id == id);
    notifyListeners();
  }
}
