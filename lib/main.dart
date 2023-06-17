import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// widget responsável por todas as configurações do aplicativo. StatelessWidget é um widget sem estado, uma vez criado permanece da mesma forma até a morte dele
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// widget responsável pela página do aplicativo, a principal, no caso.

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
    print(count);
  }

  void increment() {
    setState(() {
      count++;
    });
    print(count);
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/cafeteria.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.linearToSrgbGamma(),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              isFull ? "Lotado" : "Pode entrar!",
              style:  TextStyle(
                  fontSize: 50,
                  color: isFull ? Color.fromARGB(255, 143, 10, 1)  : Colors.black87,
                  fontWeight: FontWeight.w700,
                  
                  ),
            ),
            Text(
              count.toString(),
              style:   TextStyle(
                fontSize: 120,
                color: isFull ? Color.fromARGB(255, 143, 10, 1) : Colors.black87,
              ),
            ),

            //espaçamento entre o texto (o numero de pessoas) e os botões. Ou seja, o espaçamento vertical
            const SizedBox(height: 85),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: isEmpty ? null : decrement,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white, 
                    backgroundColor: isEmpty ? Colors.black.withOpacity(0.2) : Colors.black,
                    //padding: const EdgeInsets.all(32)
                    fixedSize: const Size(120, 120),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70)),
                  ),
                  child: const Text(
                    "Saiu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),

                // espaçamento entre os botões de saída e entrada
                const SizedBox(width: 53),

                TextButton(
                  onPressed: isFull ? null : increment,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white, 
                    backgroundColor: isFull ? Colors.black.withOpacity(0.2) :  Colors.black,
                    //padding: const EdgeInsets.all(32)
                    fixedSize: const Size(120, 120),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70)),
                  ),
                  child: const Text(
                    "Entrou",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/*class HomePage extends StatelessWidget {
  HomePage({super.key});

 
}*/
