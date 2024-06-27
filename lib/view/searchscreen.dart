import 'package:flutter/material.dart';
import 'package:wheather_app/cubit/weathercubit.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = WeatherCubit.get(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Search"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: TextField(
                onSubmitted: (value) async {
                  await cubit.GetwaehtherData(cityname: value);
                  Navigator.pop(context);
                },
                decoration: InputDecoration(
                  hintText: "Enter your City",
                  labelText: "Search",
                  border: OutlineInputBorder(),
                )),
          ),
        ));
  }
}
