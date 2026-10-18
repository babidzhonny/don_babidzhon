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
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
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

      endDrawer: SizedBox(
        width: double.infinity,
        child: Material(
          color: Color.fromARGB(255, 242, 242, 242),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                width: 375,
                height: 609,
                child: Stack(
                  children: [
                    Positioned(
                      child: Image.asset('Images/Pitt.png', width: 375, height: 165, fit: BoxFit.fill),
                    ),
                    Positioned(
                      top: 45,
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
                    Positioned(
                      top: 45,
                      left: 45,
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.chevron_left),
                          onPressed: () => Poloski.currentState?.closeEndDrawer(),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 260,
                      left: 45,
                      width: 128,
                      height: 19,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text('Сытый Питт', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Positioned(
                      top: 282,
                      left: 45,
                      width: 14,
                      height: 14,
                      child: Icon(Icons.star_border),
                    ),
                    Positioned(
                      top: 284,
                      left: 72,
                      width: 32,
                      height: 19,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text('4,5', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Positioned(
                      top: 284,
                      left: 104,
                      width: 48,
                      height: 19,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text('(100+)', style: GoogleFonts.notoSans(fontSize: 14, color: const Color(0xFFBDBDBD))),
                      ),
                    ),
                    Positioned(
                      top: 284,
                      left: 164,
                      width: 96,
                      height: 19,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text('25-30 мин', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Positioned(
                      top: 284,
                      left: 263,
                      width: 16,
                      height: 19,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text('₽', style: GoogleFonts.notoSans(fontSize: 14)),
                      ),
                    ),
                    Positioned(
                      top: 269,
                      left: 275,
                      width: 72,
                      height: 44,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text('300', style: GoogleFonts.notoSans(fontSize: 32, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Positioned(
                      top: 446,
                      left: 45,
                      width: 285,
                      child: Container(
                        width: 285,
                        height: 45,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF2C94C),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(
                            Radius.elliptical(20, 20),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Купить',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.notoSans(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 300,
                      left: 60,
                      width: 285,
                      height: 128,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('Et consectetur commodo ut consectetur ex\nnulla voluptate commodo ipsum incididunt qui\ndolor.', style: GoogleFonts.notoSans(fontSize: 14)),
                      ),
                    ),
                    Positioned(
                      top: 500,
                      left: 33,
                      width: 128,
                      height: 32,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('Дополнительно', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Positioned(
                      top: 500,
                      left: 168,
                      width: 128,
                      height: 32,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('Похожие', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold, color: const Color(0xFF828282))),
                      ),
                    ),
                    Positioned(
                      top: 500,
                      left: 256,
                      width: 128,
                      height: 32,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('Отзывы', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold, color: const Color(0xFF828282))),
                      ),
                    ),
                    Positioned (
                      top: 556,
                      left: 33,
                      child: const SizedBox(
                        width: 50,
                        child: Divider(
                        color: Colors.black,
                        thickness: 2,
                          ),
                      ),
                    ),
                    Positioned(
                      top: 228,
                      left: 300,
                      width: 24,
                      height: 24,
                      child: Icon(Icons.favorite_outline),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 580,
                left: 0,
                right: 0,
                bottom: 0,
                child: ListView(
                  children: [
                    Container(
                      height: 228,
                      color: Color.fromARGB(255, 242, 242, 242),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 75,
                            width: 285,
                            height: 32,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text('Просто кофе', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 232,
                            width: 285,
                            height: 32,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text('200 руб', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Positioned(
                            top: 20,
                            left: 75,
                            width: 285,
                            height: 32,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text('Вкусный зерновой кофеечек', style: GoogleFonts.notoSans(fontSize: 14, color: const Color(0xFF828282))),
                            ),
                          ),
                          Positioned(
                            left: 8,
                            top: 0,
                            child: Image.asset('Images/coffee.png', width: 61, height: 61),
                          ),


                          Positioned(
                            top: 70,
                            left: 75,
                            width: 285,
                            height: 32,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text('Просто кофе', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Positioned(
                            top: 70,
                            left: 232,
                            width: 285,
                            height: 32,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text('200 руб', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Positioned(
                            top: 90,
                            left: 75,
                            width: 285,
                            height: 32,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text('Вкусный зерновой кофеечек', style: GoogleFonts.notoSans(fontSize: 14, color: const Color(0xFF828282))),
                            ),
                          ),
                          Positioned(
                            left: 8,
                            top: 70,
                            child: Image.asset('Images/coffee.png', width: 61, height: 61),
                          ),


                          Positioned(
                            top: 140,
                            left: 75,
                            width: 285,
                            height: 32,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text('Просто кофе', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Positioned(
                            top: 140,
                            left: 232,
                            width: 285,
                            height: 32,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text('200 руб', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Positioned(
                            top: 160,
                            left: 75,
                            width: 285,
                            height: 32,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text('Вкусный зерновой кофеечек', style: GoogleFonts.notoSans(fontSize: 14, color: const Color(0xFF828282))),
                            ),
                          ),
                          Positioned(
                            left: 8,
                            top: 140,
                            child: Image.asset('Images/coffee.png', width: 61, height: 61),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 405,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 242, 242, 242),
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
                        style: GoogleFonts.notoSans(fontSize: 16),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 64,
                    left: 215,
                    width: 14,
                    height: 14,
                    child: Icon(Icons.keyboard_arrow_down),
                  ),
                  Positioned(
                    top: 61,
                    left: 300,
                    width: 30,
                    height: 30,
                    child: Icon(
                    Icons.shopping_cart_outlined
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
                        style: GoogleFonts.notoSans(fontSize: 36),
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
                        style: GoogleFonts.notoSans(fontSize: 16, color: const Color(0xFFBDBDBD)),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 246,
                    left: 51,
                    width: 18,
                    height: 18,
                    child: Transform.flip(
                      flipX: true,
                      child: const Icon(Icons.search),
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
                      child: Text('Все', style: GoogleFonts.notoSans(fontSize: 14)),
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
                      child: Text('Пицца', style: GoogleFonts.notoSans(fontSize: 14)),
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
                      child: Text('Кебаб', style: GoogleFonts.notoSans(fontSize: 14)),
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
                      child: Text('Бургер', style: GoogleFonts.notoSans(fontSize: 14)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 419,
            left: 0,
            right: 0,
            bottom: 0,
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () => Poloski.currentState?.openEndDrawer(),
                  child: Container(
                    height: 1555,
                    color: Color.fromARGB(255, 242, 242, 242),
                    child: Stack(
                      children: [
                      Positioned(
                        top: 0,
                        child: Image.asset('Images/Margo.png', width: 375, height: 286),
                      ),
                      Positioned(
                        top: 260,
                        left: 45,
                        width: 128,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('Дерзкая Марго', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Positioned(
                        top: 282,
                        left: 45,
                        width: 14,
                        height: 14,
                        child: Icon(Icons.star_border),
                      ),
                      Positioned(
                        top: 284,
                        left: 72,
                        width: 32,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('4,5', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Positioned(
                        top: 284,
                        left: 104,
                        width: 48,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('(100+)', style: GoogleFonts.notoSans(fontSize: 14, color: const Color(0xFFBDBDBD))),
                        ),
                      ),
                      Positioned(
                        top: 284,
                        left: 164,
                        width: 96,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('25-30 мин', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Positioned(
                        top: 284,
                        left: 263,
                        width: 16,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('₽', style: GoogleFonts.notoSans(fontSize: 14)),
                        ),
                      ),
                      Positioned(
                        top: 269,
                        left: 275,
                        width: 72,
                        height: 44,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text('300', style: GoogleFonts.notoSans(fontSize: 32, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Positioned(
                        top: 328,
                        left: 45,
                        width: 285,
                        // height: 45,
                        child: Container(
                          width: 285,
                          height: 45,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF2C94C),
                            shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                              Radius.elliptical(20, 20),
                              ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Купить',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.notoSans(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                        ),
                        ),
                      ),



                      Positioned(
                        top: 374,
                        child: Image.asset('Images/HotGuy.png', width: 375, height: 286),
                      ),
                      Positioned(
                        top: 634,
                        left: 45,
                        width: 128,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('Горячий Парень', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Positioned(
                        top: 656,
                        left: 45,
                        width: 14,
                        height: 14,
                        child: Icon(Icons.star_border),
                      ),
                      Positioned(
                        top: 658,
                        left: 72,
                        width: 32,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('4,5', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Positioned(
                        top: 658,
                        left: 104,
                        width: 48,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('(100+)', style: GoogleFonts.notoSans(fontSize: 14, color: const Color(0xFFBDBDBD))),
                        ),
                      ),
                      Positioned(
                        top: 658,
                        left: 164,
                        width: 96,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('25-30 мин', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Positioned(
                        top: 658,
                        left: 263,
                        width: 16,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('₽', style: GoogleFonts.notoSans(fontSize: 14)),
                        ),
                      ),
                      Positioned(
                        top: 643,
                        left: 275,
                        width: 72,
                        height: 44,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text('300', style: GoogleFonts.notoSans(fontSize: 32, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Positioned(
                        top: 702,
                        left: 45,
                        width: 285,
                        // height: 45,
                        child: Container(
                          width: 285,
                          height: 45,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF2C94C),
                            shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                              Radius.elliptical(20, 20),
                              ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Купить',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.notoSans(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                        ),
                        ),
                      ),



                      Positioned(
                        top: 748,
                        child: Image.asset('Images/Mia.png', width: 375, height: 286),
                      ),
                      Positioned(
                        top: 1008,
                        left: 45,
                        width: 128,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('Вкусняшка Миа', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Positioned(
                        top: 1034,
                        left: 45,
                        width: 14,
                        height: 14,
                        child: Icon(Icons.star_border),
                      ),
                      Positioned(
                        top: 1036,
                        left: 72,
                        width: 32,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('4,5', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Positioned(
                        top: 1036,
                        left: 104,
                        width: 48,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('(100+)', style: GoogleFonts.notoSans(fontSize: 14, color: const Color(0xFFBDBDBD))),
                        ),
                      ),
                      Positioned(
                        top: 1036,
                        left: 164,
                        width: 96,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('25-30 мин', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Positioned(
                        top: 1036,
                        left: 263,
                        width: 16,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('₽', style: GoogleFonts.notoSans(fontSize: 14)),
                        ),
                      ),
                      Positioned(
                        top: 1021,
                        left: 275,
                        width: 72,
                        height: 44,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text('300', style: GoogleFonts.notoSans(fontSize: 32, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Positioned(
                        top: 1080,
                        left: 45,
                        width: 285,
                        // height: 45,
                        child: Container(
                          width: 285,
                          height: 45,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF2C94C),
                            shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                              Radius.elliptical(20, 20),
                              ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Купить',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.notoSans(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                        ),
                        ),
                      ),



                      Positioned(
                        top: 1126,
                        child: Image.asset('Images/Pitt.png', width: 375, height: 286),
                      ),
                      Positioned(
                        top: 1382,
                        left: 45,
                        width: 128,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('Сырный Питт', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Positioned(
                        top: 1412,
                        left: 45,
                        width: 14,
                        height: 14,
                        child: Icon(Icons.star_border),
                      ),
                      Positioned(
                        top: 1410,
                        left: 72,
                        width: 32,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('4,5', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Positioned(
                        top: 1410,
                        left: 104,
                        width: 48,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('(100+)', style: GoogleFonts.notoSans(fontSize: 14, color: const Color(0xFFBDBDBD))),
                        ),
                      ),
                      Positioned(
                        top: 1410,
                        left: 164,
                        width: 96,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('25-30 мин', style: GoogleFonts.notoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Positioned(
                        top: 1410,
                        left: 263,
                        width: 16,
                        height: 19,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('₽', style: GoogleFonts.notoSans(fontSize: 14)),
                        ),
                      ),
                      Positioned(
                        top: 1379,
                        left: 275,
                        width: 72,
                        height: 44,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text('300', style: GoogleFonts.notoSans(fontSize: 32, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Positioned(
                        top: 1458,
                        left: 45,
                        width: 285,
                        // height: 45,
                        child: Container(
                          width: 285,
                          height: 45,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF2C94C),
                            shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                              Radius.elliptical(20, 20),
                              ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Купить',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.notoSans(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                        ),
                        ),
                      ),
                      ],
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
