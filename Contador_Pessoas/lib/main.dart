import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _cont = 0;
  int lotado = 20;

  void increment() {
    setState(() {
      if (_cont != lotado) {
        _cont++;
      }
    });
  }

  void decrement() {
    setState(() {
      if (_cont != 0) {
        _cont--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contador de Pessoas',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text((_cont == lotado) ? 'lotado!' : 'Pode Entrar!',
                style: (_cont == lotado)
                    ? TextStyle(color: Colors.red, fontSize: 35)
                    : TextStyle(color: Colors.black, fontSize: 35)),
            SizedBox(height: 30),
            Text(
              '$_cont',
              style: TextStyle(fontSize: 35),
            ),
            Padding(
              padding: EdgeInsets.all(60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: (_cont == lotado) ? null : increment,
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          fixedSize: Size(90, 90),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: Text("Entrar",
                          style: TextStyle(color: Colors.white, fontSize: 17))),
                  SizedBox(width: 20),
                  TextButton(
                      onPressed: (_cont == 0) ? null : decrement,
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          fixedSize: Size(90, 90),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: Text("Sair",
                          style: TextStyle(color: Colors.white, fontSize: 17))),
                ],
              ),
            ),
            Text("Copyright Alessandro 2024",
                style: TextStyle(color: Colors.blueGrey, fontSize: 17))
          ],
        ));
  }
}


