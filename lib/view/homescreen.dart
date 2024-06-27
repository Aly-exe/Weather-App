import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheather_app/cubit/weathercubit.dart';
import 'package:wheather_app/cubit/weathersatates.dart';
import 'package:wheather_app/screens/noweatherscreen.dart';
import 'package:wheather_app/screens/weatherdata.dart';
import 'package:wheather_app/view/searchscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
          }, icon: Icon(Icons.search,),)
        ]),
      body: BlocBuilder<WeatherCubit,WeatherStates>(
        builder: (context,State){
            if(State is InitialState){
              return NoWaetherData();
            }else if(State is SuccesGetWeatherDataState){
              return WeatherData();
            }else{
              return Text("theres an error");
            }
      }),
    );
  }
}