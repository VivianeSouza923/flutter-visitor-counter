import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// widget responsável por todas as configurações do aplicativo
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

// widget responsável pela página do aplicativo, a principal, no caso.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void decrement() {
    print("Decrement");
  }

  void increment() {
    print("Increment");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Pode entrar!",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          const Text(
            "0",
            style: TextStyle(
              fontSize: 100,
              color: Colors.white,
            ),
          ),

          //espaçamento entre o texto (o numero de pessoas) e os botões. Ou seja, o espaçamento vertical
          const SizedBox(height: 54),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  //padding: const EdgeInsets.all(32)
                  fixedSize: const Size(100, 100),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70)),
                ),
                child: const Text(
                  "Saiu",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),

              // espaçamento entre os botões de saída e entrada
              const SizedBox(width: 53),

              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  //padding: const EdgeInsets.all(32)
                  fixedSize: const Size(100, 100),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70)),
                ),
                child: const Text(
                  "Entrou",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
