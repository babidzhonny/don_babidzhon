import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page FJFJ☆☆☆☆☆'),
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
      backgroundColor: const Color.fromARGB(255, 200, 200, 200),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 375,
          height: 405,
          decoration: BoxDecoration(
          color: Color.fromARGB(255, 242, 242, 242)
          ),
          child: Stack(
            children: [
              Positioned(
                top: 60,
                left: 45,
                child: Image.asset('Images/Menu.png', width: 30, height: 30),
              ),
              Positioned(
                top: 60,
                left: 90,
                width: 120,
                height: 30,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Челябинск',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSans(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 64,
                left: 215,
                width: 14,
                height: 14,
                child: Align(
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                  ),
                ),
              ),
              Positioned(
                top: 61,
                left: 300,
                width: 30,
                height: 30,
                child: Align(
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                  ),
                ),
              ),
              Positioned(
                top: 159,
                left: 47,
                width: 169,
                height: 49,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Голоден?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSans(
                      fontSize: 36,
                    ),
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
