import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFAAAFFF),
      padding: const EdgeInsets.all(24),
      child: const Text(
        'To-do List app',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Color(0xFF000000),
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
