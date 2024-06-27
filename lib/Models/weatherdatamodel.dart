class WeatherDataModel {
  final String? cityname;
  final double? temp;
  final double? max_temp;
  final double? min_temp;
  final String? lastupdate;
  final String? climate_condition;
  final String? icon;

  WeatherDataModel({
    required this.cityname,
    required this.temp,
    required this.max_temp,
    required this.min_temp,
    required this.lastupdate,
    required this.climate_condition,
    required this.icon,
  });
  factory WeatherDataModel.fromJson(json) {
    return WeatherDataModel(
      cityname: json["location"]["name"],
      temp: json["current"]["temp_c"],
      max_temp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      min_temp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
      climate_condition: json["current"]["condition"]["text"],
      //climate_condition: json["forecast"]["forecastday"][0]["day"]["condition"]["text"],
      lastupdate:json["current"]["last_updated"],
      //lastupdate:json["location"]["localtime"],
      icon: json["current"]["condition"]["icon"],
    );
  }
  
}
