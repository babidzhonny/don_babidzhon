import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeader extends StatelessWidget {
  final VoidCallback onOpenMenu;

  const HomeHeader({super.key, required this.onOpenMenu});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                onPressed: onOpenMenu,
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
    );
  }
}