import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    final double ekranYuksekligi =  ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: ekranYuksekligi/20),
                child: SizedBox(
                  width: ekranGenisligi/4,
                  height: ekranYuksekligi/6,
                  child: Image.asset('assets/key.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi/30),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Kullanıcı Adı",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi/30),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Şifre",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi/30),
                child: SizedBox(
                  width: ekranGenisligi/2,
                  height: ekranYuksekligi/15,
                  child: ElevatedButton(
                    onPressed: (() {
                      print("Giriş yapıldı..");
                    }),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange
                    ),
                    child: Text("Giriş Yap", style: TextStyle(fontSize: ekranGenisligi/25),),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Yardıma ihtiyacın yok sen her şeyi yaparsın");
                },
                child: const Text(
                  "Help",
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    //fontSize: ekranGenisligi/30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
