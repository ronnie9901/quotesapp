import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotesapp/allscreens/categorios.dart';
import 'package:quotesapp/allscreens/fav.dart';
import 'package:quotesapp/allscreens/home.dart';
import 'package:quotesapp/allscreens/shere.dart';
import 'package:quotesapp/allscreens/splacescreen.dart';
import 'package:quotesapp/allscreens/thememode.dart';
import 'package:quotesapp/allscreens/thiemepage.dart';

bool isLight = true;

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(


      theme: themeProvider.isLightTheme ? ThemeData.light() : ThemeData.dark(),

      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => splacesceen(),
        '/home': (context) => homesreen(),
        '/cate': (context) => categoriescreen(),
        '/theme': (context) => themesrceen(),
        '/share': (context) => themesrceen(),
        '/mode': (context) => ThemeModeSwitcher(),
        '/fav': (context) => favscreen(),
      },
    );
  }
}
