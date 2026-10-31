import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'DrawerLeft.dart';
import 'Header.dart';
import 'Dishes.dart';
import 'EndDrawerRight.dart'; 

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var WhichDish = "";
  final GlobalKey<ScaffoldState> poloski = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: poloski,
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      drawer: AppDrawer(
          onClose: () => poloski.currentState?.closeDrawer(),
        ),

      endDrawer: SizedBox(
        width: double.infinity,
        child: DishDetailDrawer(
          whichDish: WhichDish,
          onClose: () {
            poloski.currentState?.closeEndDrawer();
            WhichDish = "";
          },
        ),
      ),

      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 405,
            child: HomeHeader(
              onOpenMenu: () => poloski.currentState?.openDrawer(),
            ),
          ), 
          Positioned(
            top: 419,
            left: 0,
            right: 0,
            bottom: 0,
            child: ListView(
            children: [
              DishCard(
                image: 'Images/Margo.png',
                name: 'Дерзкая Марго',
                onTap: () {
                  WhichDish = "Margo";
                  poloski.currentState?.openEndDrawer();
                },
              ),
              DishCard(
                image: 'Images/HotGuy.png',
                name: 'Горячий Парень',
                onTap: () {
                  WhichDish = "HotGuy";
                  poloski.currentState?.openEndDrawer();
                },
              ),
              DishCard(
                image: 'Images/Mia.png',
                name: 'Вкусняшка Миа',
                onTap: () {
                  WhichDish = "Mia";
                  poloski.currentState?.openEndDrawer();
                },
              ),
              DishCard(
                image: 'Images/Pitt.png',
                name: 'Сытый Питт',
                onTap: () {
                  WhichDish = "Pitt";
                  poloski.currentState?.openEndDrawer();
                },
              ),
            ],
          )
          ),
        ],
      ),
    );
  }
}