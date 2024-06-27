import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheather_app/cubit/weathercubit.dart';
import 'package:wheather_app/cubit/weathersatates.dart';
import 'package:wheather_app/functions/cahngetheme.dart';
import 'package:wheather_app/view/homescreen.dart';

void main() async {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  const WeatherApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(),
      child: Builder(
          builder: (context) => BlocBuilder<WeatherCubit,WeatherStates >(
                builder: (context, state) {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: "Weather App with Api and Cubit",
                    theme: ThemeData(
                      primarySwatch: ChangeThemeColor(WeatherCubit.get(context)
                          .weatherDataModel
                          ?.climate_condition),
                    ),
                    home: HomeScreen(),
                  );
                },
              )),
    );
  }
}