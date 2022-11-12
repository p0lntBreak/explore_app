// ignore_for_file: depend_on_referenced_packages, must_be_immutable

import 'dart:convert';

import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/*

class Country extends StatefulWidget {
  const Country({super.key});

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  Future getUserData() async {
    var response = await http.get(Uri.https("restcountries.com", "v3.1/all"));
    var jsondata = jsonDecode(response.body);

    List<User> users = [];

    for (var u in jsondata) {
      User user = User(u["name"], u["email"], u["username"]);
      users.add(user);
    }
    // print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}

class User {
  final String name, email, userName;
  User(this.name, this.email, this.userName);
}

*/

//Create a list view using the country_data_model
class CountryList extends StatelessWidget {
  Map<String, dynamic> country;

  CountryList(this.country, {super.key, required Country SelectedCountry});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
            itemCount: country.length,
            itemBuilder: (context, index) {
              String key = country.keys.elementAt(index);

              return Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                  ),
                  Text('$key :'),
                  Text(country[key].toString())
                ],
              );
            })
      ],
    );
  }
}
