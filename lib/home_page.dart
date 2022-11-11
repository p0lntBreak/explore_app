import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

bool _iconBool = false;

IconData lightMode = Icons.sunny;
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
                  Row(children: const [
                    Text(
                      ' Explore',
                      style: TextStyle(
                        fontFamily: 'ElsieSwashCaps',
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                      child: Text(
                        '.',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 108, 0, 1),
                            fontSize: 30.0),
                      ),
                    )
                  ]),
                  IconButton(
                    onPressed: () {
                      setState(() {});
                    },
                    icon: Icon(_iconBool ? darkMode : lightMode),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.08,
              ),
              Row(
                children: [
                  Container(
                    width: 340.0,
                    height: 48.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.grey[100],
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      maxLines: 1,
                      decoration: const InputDecoration(
                        fillColor: Color.fromRGBO(242, 244, 247, 1),
                        filled: true,
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search Country',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 73,
                    height: 40,
                    color: const Color.fromARGB(255, 252, 252, 252),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.language),
                      iconSize: 24,
                    ),
                  ),
                  Container(
                    width: 86,
                    height: 40,
                    color: const Color.fromARGB(255, 249, 248, 248),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.filter_alt),
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
