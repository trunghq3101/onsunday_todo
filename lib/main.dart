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
      child: Column(
        children: [
          const Text(
            'To-do List app',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Color(0xFF000000),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(top: 24),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFF0000FF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'Add new todo',
                textDirection: TextDirection.ltr,
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
    );
  }
}
