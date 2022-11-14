import 'package:flutter/material.dart';
import 'country_data_model.dart';
//import 'package:http/http.dart' as http;

//Create a list view using the country_data_model
class CountryList extends StatelessWidget {
  const CountryList({super.key, required this.country});
  final Country country;

  @override
  Widget build(BuildContext context) {
    return const ListTile(
        //leading: ,
        );
  }
}
