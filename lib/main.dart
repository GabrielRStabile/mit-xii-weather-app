import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Olá mundo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo/logo.png",
              height: 100,
            ),
            Container(height: 30),
            const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.accessibility),
                filled: true,
                label: Text("Email"),
                // fillColor: Colors.cyan,
                border: OutlineInputBorder(),
              ),
            ),
            Container(height: 30),
            const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                filled: true,
                border: OutlineInputBorder(),
                label: Text("Senha"),
              ),
              obscureText: true,
            ),
            Container(height: 30),
            ElevatedButton(
              onPressed: () => print("Tentando"),
              child: const Text("Entrar"),
            ),
          ],
        ),
      ),
    );
  }
}
