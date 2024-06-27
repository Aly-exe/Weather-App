import 'package:flutter/material.dart';

MaterialColor ChangeThemeColor(String? condition){
  switch (condition?.toLowerCase()) {
    case "null":
      return Colors.lightBlue;
    case "sunny":
      return Colors.yellow;
    case "clear":
      return Colors.lightBlue;
    case "partly cloudy":
      return Colors.lightBlue;
    case "cloudy":
      return Colors.blue;
    case "overcast":
      return Colors.grey;
    case "mist":
      return Colors.grey;
    case "patchy rain possible":
      return Colors.lightBlue;
    case "patchy snow possible":
      return Colors.lightBlue;
    case "patchy sleet possible":
      return Colors.lightBlue;
    case "patchy freezing drizzle possible":
      return Colors.lightBlue;
    case "thundery outbreaks possible":
      return Colors.deepPurple;
    case "blowing snow":
      return Colors.lightBlue;
    case "blizzard":
    case "fog":
      return Colors.grey;
    case "freezing fog":
      return Colors.grey;
    case "patchy light drizzle":
      return Colors.lightBlue;
    case "light drizzle":
      return Colors.lightBlue;
    case "freezing drizzle":
      return Colors.lightBlue;
    case "heavy freezing drizzle":
      return Colors.lightBlue;
    case "patchy light rain":
      return Colors.lightBlue;
    case "light rain":
      return Colors.lightBlue;
    case "moderate rain at times":
      return Colors.lightBlue;
    case "moderate rain":
      return Colors.lightBlue;
    case "heavy rain at times":
      return Colors.lightBlue;
    case "heavy rain":
      return Colors.lightBlue;
    case "light freezing rain":
      return Colors.lightBlue;
    case "moderate or heavy freezing rain":
      return Colors.lightBlue;
    case "light sleet":
      return Colors.lightBlue;
    case "moderate or heavy sleet":
      return Colors.lightBlue;
    case "patchy light snow":
      return Colors.lightBlue;
    case "light snow":
      return Colors.lightBlue;
    case "patchy moderate snow":
      return Colors.lightBlue;
    case "moderate snow":
      return Colors.lightBlue;
    case "patchy heavy snow":
      return Colors.lightBlue;
    case "heavy snow":
      return Colors.lightBlue;
    case "ice pellets":
      return Colors.grey;
    case "light rain shower":
      return Colors.lightBlue;
    case "moderate or heavy rain shower":
      return Colors.lightBlue;
    case "torrential rain shower":
      return Colors.lightBlue;
    case "light sleet showers":
      return Colors.lightBlue;
    case "moderate or heavy sleet showers":
      return Colors.lightBlue;
    case "light snow showers":
      return Colors.lightBlue;
    case "moderate or heavy snow showers":
      return Colors.lightBlue;
    case "light showers of ice pellets":
      return Colors.lightBlue;
    case "moderate or heavy showers of ice pellets":
      return Colors.lightBlue;
    case "patchy light rain with thunder":
      return Colors.lightBlue;
    case "moderate or heavy rain with thunder":
      return Colors.lightBlue;
    case "patchy light snow with thunder":
      return Colors.lightBlue;
    case "moderate or heavy snow with thunder":
      return Colors.lightBlue;
    default:
      return Colors.blue;
  }
}