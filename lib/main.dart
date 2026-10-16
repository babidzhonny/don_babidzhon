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

//GestureDetector(
//  onTap: () => Poloski.currentState?.openEndDrawer(),
//),

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> Poloski = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: Poloski,
      backgroundColor: const Color.fromARGB(255, 200, 200, 200),
      drawer: Drawer(
        child: Container(
          width: 330,
          height: 812,
          decoration: BoxDecoration(
          color: Color.fromARGB(255, 242, 242, 242)
          ),
          child: Stack(
            children: [
              Positioned(
                top: 60,
                left: 45,
                child: Image.asset('Images/Shafelin.png', width: 45, height: 45),
              ),
              Positioned(
                top: 65,
                left: 105,
                width: 200,
                height: 19,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Фристайло Щафелин',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.notoSans(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 105,
                width: 200,
                height: 19,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'валера@gmail.com',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.notoSans(
                      fontSize: 14,
                      color: const Color(0xFFBDBDBD),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 69,
                left: 255,
                child: Image.asset('Images/Out.png', width: 30, height: 30),
              ),
              Positioned(
                top: 135,
                left: 45,
                width: 330,
                height: 45,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context); 
                    },
                  child: Text(
                    'Все меню',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.notoSans(
                      fontSize: 16,
                    ),
                  ),
                  ),
                ),
              ),
              Positioned(
                top: 180,
                left: 45,
                width: 330,
                height: 45,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Заказы',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.notoSans(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 225,
                left: 45,
                width: 330,
                height: 45,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Корзина',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.notoSans(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 180,
                left: 269,
                width: 10,
                height: 45,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '6',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.notoSans(
                      fontSize: 16,
                      color: const Color(0xFFBDBDBD),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 236,
                left: 250,
                width: 45,
                // height: 45,
                child: Container(
                  width: 22,
                  height: 22,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF2C94C),
                    shape: BoxShape.circle,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '3',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.notoSans(
                        fontSize: 16,
                      ),
                    ),
                ),
                ),
              ),
            ],
          ),
        ),
      ),

      endDrawer: Drawer(
        child: Column(
          children: [
            Container(
            width: 375,
            height: 609,
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset('Images/Pitt.png', width: 375, height: 286),
                ),
                Positioned(
                  top: 61,
                  left: 300,
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      ),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, 
        children: [
          Container(
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
                child: IconButton(
                  icon: Image.asset('Images/Menu.png', width: 30, height: 30),
                  onPressed: () => Poloski.currentState?.openDrawer(),
                ),
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
                  child: IconButton(
                    icon: Icon(Icons.shopping_cart_outlined),
                    onPressed: () => Poloski.currentState?.openEndDrawer(),
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
              Positioned(
                top: 240,
                left: 45,
                width: 195,
                height: 30,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Поиск по меню',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSans(
                      fontSize: 16,
                      color: const Color(0xFFBDBDBD)
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 246,
                left: 51,
                width: 18,
                height: 18,
                child: Align(
                  alignment: Alignment.center,
                  child: Transform.flip(
                    flipX: true,
                    child: const Icon(
                      Icons.search,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 321,
                left: 50,
                child: Image.asset('Images/ding.png', width: 36, height: 36),
              ),
              Positioned(
                top: 372,
                left: 55,
                width: 25,
                height: 19,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Все',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSans(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 321,
                left: 128,
                child: Image.asset('Images/pizza.png', width: 36, height: 36),
              ),
              Positioned(
                top: 372,
                left: 114,
                width: 64,
                height: 19,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Пицца',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSans(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 321,
                left: 206,
                child: Image.asset('Images/kebab.png', width: 36, height: 36),
              ),
              Positioned(
                top: 372,
                left: 192,
                width: 64,
                height: 19,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Кебаб',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSans(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 321,
                left: 284,
                child: Image.asset('Images/burgir.png', width: 36, height: 36),
              ),
              Positioned(
                top: 372,
                left: 270,
                width: 64,
                height: 19,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Бургер',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSans(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
