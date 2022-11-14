import 'package:explore_app/home_page.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    // initialRoute: '/Homepage',
    routes: {
      '/': (context) => const Homepage(),
    },
  ));
}

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
            primary: Colors.white, brightness: Brightness.light),
      ),
      darkTheme: ThemeData(),
      home: const Homepage(),
    );
  }
}
