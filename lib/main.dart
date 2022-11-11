import 'package:explore_app/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Explore());
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
        colorScheme: ColorScheme.light(
            primary: Colors.white, brightness: Brightness.light),
      ),
      darkTheme: ThemeData(),
      home: Homepage(),
    );
  }
}
