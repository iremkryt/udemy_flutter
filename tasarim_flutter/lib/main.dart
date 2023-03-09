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
        primarySwatch: Colors.blue,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 80,
            height: 80,
            color: Colors.red,
            child: const Center(
              child: Text("Hola"),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.yellow,
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text("Hola"),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
