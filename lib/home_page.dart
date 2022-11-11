import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

bool _iconBool = false;

IconData lightMode = Icons.wb_sunny;
IconData darkMode = Icons.nightlight_outlined;

/*
ThemeData _lightTheme = ThemeData(
    //primarySwatch: Colors.blue,
    brightness: Brightness.light,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.white,
    ));

ThemeData _darkTheme = ThemeData(
    // primarySwatch: Colors.red,
    brightness: Brightness.dark,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.black,
    ));
*/
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    ' Explore',
                    style: TextStyle(
                      fontFamily: 'ElsieSwashCaps',
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {});
                    },
                    icon: Icon(_iconBool ? darkMode : lightMode),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.08,
              ),
              Container(
                width: 340.0,
                height: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.grey[100],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(242, 244, 247, 1),
                    filled: true,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: 'Search Country',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 73,
                    height: 40,
                    color: Color.fromARGB(255, 252, 252, 252),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.language),
                      iconSize: 24,
                    ),
                  ),
                  Container(
                    width: 86,
                    height: 40,
                    color: Color.fromARGB(255, 249, 248, 248),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.filter_alt),
                      iconSize: 24,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
