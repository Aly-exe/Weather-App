import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheather_app/Models/weatherdatamodel.dart';
import 'package:wheather_app/cubit/weathersatates.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit() : super(InitialState());
  static WeatherCubit get(context) => BlocProvider.of(context);

  Dio dio = Dio();
  String baseurl = "https://api.weatherapi.com/v1";
  String ApiKey = "4ab01cb3ee52402a9e9130627240902";
  WeatherDataModel? weatherDataModel;
  Response? response;
Future<WeatherDataModel> GetwaehtherData({required String cityname}) async {
    try {
        response = await dio
          .get("$baseurl/forecast.json?key=$ApiKey&q=$cityname&days=1");
          if(response!.statusCode==200){
            weatherDataModel=WeatherDataModel.fromJson(response!.data);
            emit(SuccesGetWeatherDataState());
            log("${weatherDataModel!.climate_condition}");
            return weatherDataModel!;
          } 
    }on DioException catch(e){
        print(e.toString());
        emit(FailierState());
        throw e.toString();
    }catch (e){
        log(e.toString());
        emit(FailierState());
        throw e.toString();
    }
    return weatherDataModel!;
}
}