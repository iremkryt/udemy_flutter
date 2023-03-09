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

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top:ekranYuksekligi/100),
            child: SizedBox(
              width: ekranGenisligi/2,
              height: ekranYuksekligi/5, 
              child: Image.asset("assets/3683.jpg"),
            ),
          ),
          Container(
            width: ekranGenisligi/4,
            height: ekranYuksekligi/8, 
            color: Colors.pink,
          ),
          const Text("Hola",style: TextStyle(fontSize: 20.0),),
        ],
      ),
    );
  }
}

// class MaviKare extends StatelessWidget {
//   const MaviKare({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 50,
//       height: 50,
//       color: Colors.pink,
//     );
//   }
// }

// class KirmiziKare extends StatelessWidget {
//   const KirmiziKare({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 50,
//       height: 50,
//       color: Colors.purple,
//     );
//   }
// }
