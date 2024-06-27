import 'package:dio/dio.dart';
import 'package:wheather_app/Models/weatherdatamodel.dart';

class WeatherApi {
  final Dio dio;
  String baseurl = "https://api.weatherapi.com/v1";
  String ApiKey = "4ab01cb3ee52402a9e9130627240902";
  WeatherApi({required this.dio});

  Future<WeatherDataModel> Getdata({required String cityname}) async {
    Response response =
        await dio.get("$baseurl/forecast.json?key=$ApiKey&q=$cityname&days=1");
    WeatherDataModel weatherDataModel =
        WeatherDataModel.fromJson(response.data);
    return weatherDataModel;
  }
}
