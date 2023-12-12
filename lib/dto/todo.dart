class Todo {
  final String id;
  final String title;

  Todo({required this.title})
      : id = DateTime.now().microsecondsSinceEpoch.toString();
}
