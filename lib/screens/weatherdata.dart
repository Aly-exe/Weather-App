import 'package:flutter/material.dart';
import 'package:wheather_app/cubit/weathercubit.dart';
import 'package:wheather_app/functions/cahngetheme.dart';


class WeatherData extends StatelessWidget {
@override
  Widget build(BuildContext context) {
          var data=WeatherCubit.get(context);
          return Scaffold(
            body: Container(
        decoration:BoxDecoration(
          gradient:LinearGradient(colors: [
            ChangeThemeColor(data.weatherDataModel!.climate_condition),
            ChangeThemeColor(data.weatherDataModel!.climate_condition)[300]!,
            ChangeThemeColor(data.weatherDataModel!.climate_condition)[50]!,

          ],
          begin: Alignment.topCenter,
          end:Alignment.bottomCenter, )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("${data.weatherDataModel!.cityname}"  ,style: TextStyle(fontSize: 32.0 ,fontWeight: FontWeight.bold),),
              
              Text("Updated at ${data.weatherDataModel!.lastupdate!.substring(11)}",style: TextStyle(fontSize: 20.0),),
              SizedBox(height: 15.0,),
              Row(children: [
                //Image.asset("assets/images/clear.png"),
                Image.network('https:${data.weatherDataModel!.icon}'),
                SizedBox(width: 75.0,),
              Text("${data.weatherDataModel!.temp!.round()}"  ,style: TextStyle(fontSize: 32.0 ,fontWeight: FontWeight.bold),),
              SizedBox(width: 40.0),
              Column(
                children: [
                  Text("Max Temp :${data.weatherDataModel!.max_temp!.round()}",style: TextStyle(fontSize: 16.0),),
                  Text("min Temp :${data.weatherDataModel!.min_temp!.round()}",style: TextStyle(fontSize: 16.0),),
                ],
              )
                
              ],),
              Text("${data.weatherDataModel!.climate_condition}",style: TextStyle(fontSize: 32.0 ,fontWeight: FontWeight.bold),),
              
            ]),
          ),
      ),
      
    );
        } 
      
  }

