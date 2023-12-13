import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        color: const Color.fromARGB(255, 119, 0, 255),
        child: GestureDetector(
          onTap: () {
            // do something
          },
          child: const Center(
            child: Text(
              'Hello world',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
