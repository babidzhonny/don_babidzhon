import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDrawer extends StatelessWidget {
  final VoidCallback onClose;
  const AppDrawer({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                  onTap: onClose,
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
    );
  }
}