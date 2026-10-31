import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DishCard extends StatelessWidget {
  final String image;
  final String name;
  final VoidCallback onTap;

  const DishCard({
    super.key,
    required this.image,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 321,
        color: const Color.fromARGB(255, 242, 242, 242),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Image.asset(image, width: 375, height: 165),
            ),
            Positioned(
              top: 181,
              left: 45,
              width: 128,
              height: 19,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  name,
                  style: GoogleFonts.notoSans(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 198,
              left: 45,
              width: 14,
              height: 14,
              child: const Icon(Icons.star_border),
            ),
            Positioned(
              top: 200,
              left: 66,
              width: 32,
              height: 19,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  '4,5',
                  style: GoogleFonts.notoSans(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 97,
              width: 48,
              height: 19,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  '(100+)',
                  style: GoogleFonts.notoSans(
                    fontSize: 14,
                    color: const Color(0xFFBDBDBD),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 153,
              width: 96,
              height: 19,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  '25-30 мин',
                  style: GoogleFonts.notoSans(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 263,
              width: 16,
              height: 19,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  '₽',
                  style: GoogleFonts.notoSans(fontSize: 14),
                ),
              ),
            ),
            Positioned(
              top: 177,
              left: 276,
              width: 60,
              height: 44,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('300', style: GoogleFonts.notoSans(fontSize: 32, fontWeight: FontWeight.bold)),
              ),
            ),
            Positioned(
              top: 241,
              left: 45,
              width: 285,
              child: Container(
                width: 285,
                height: 45,
                decoration: const BoxDecoration(
                  color: Color(0xFFF2C94C),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(20, 20),
                  ),
                ),
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
          ],
        ),
      ),
    );
  }
}