import 'package:flutter/material.dart';
import 'ejercicio1.dart';
import 'ejercicio2.dart';
import 'ejercicio3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejercicios',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        'lib/ejercicio1': (context) => Ejercicio1(),
        'lib/ejercicio2': (context) => Ejercicio2(),
        'lib/ejercicio3': (context) => Ejercicio3(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicios'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'lib/ejercicio1');
              },
              child: const Text('Ejercicio 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'lib/ejercicio2');
              },
              child: const Text('Ejercicio 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'lib/ejercicio3');
              },
              child: const Text('Ejercicio 3'),
            ),
          ],
        ),
      ),
    );
  }
}
