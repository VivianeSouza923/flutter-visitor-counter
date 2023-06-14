import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: const Color.fromARGB(255, 215, 227, 233),
        alignment: Alignment.center,
        child: const Text("Olá, mundo!"),
      ),
    );
  }
}
