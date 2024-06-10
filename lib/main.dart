import 'package:flutter/material.dart';
import 'package:quotesapp/allscreens/categorios.dart';
import 'package:quotesapp/allscreens/fav.dart';
import 'package:quotesapp/allscreens/home.dart';
import 'package:quotesapp/allscreens/splacescreen.dart';
import 'package:quotesapp/allscreens/thiemepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:
      {
              '/': (context) => splacesceen(),
              '/home': (context) => homesreen(),
              '/cate': (context) => categoriescreen(),
              '/theme': (context) => themesrceen(),
              '/fav': (context) => favscreen(),
      }
    );
  }
}



