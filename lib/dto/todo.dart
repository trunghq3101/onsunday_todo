class Todo {
  final String id;
  final String title;
  final bool isDone;

  Todo({
    required this.title,
    String? id,
    this.isDone = false,
  }) : id = id ?? DateTime.now().microsecondsSinceEpoch.toString();

  Todo copyWith({required bool isDone}) {
    return Todo(
      id: id,
      title: title,
      isDone: isDone,
    );
  }
}
