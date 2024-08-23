import 'Currentweather_model.dart';

class CurrentWeather {
  final double temperature;
  final double feelsLike;
  final double pressure;
  final int humidity;
  final int clouds;
  final double visibility;
  final double windSpeed;
  final int windDeg;
  final WeatherCondition weather;

  CurrentWeather({
    required this.temperature,
    required this.feelsLike,
    required this.pressure,
    required this.humidity,
    required this.clouds,
    required this.visibility,
    required this.windSpeed,
    required this.windDeg,
    required this.weather,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    return CurrentWeather(
      temperature: json['main']['temp'].toDouble(),
      feelsLike: json['main']['feels_like'].toDouble(),
      pressure: json['main']['pressure'].toDouble(),
      humidity: json['main']['humidity'],
      clouds: json['clouds']['all'],
      visibility: json['visibility'].toDouble(),
      windSpeed: json['wind']['speed'].toDouble(),
      windDeg: json['wind']['deg'],
      weather: WeatherCondition.fromJson(json['weather'][0]),
    );
  }
}
class WeatherCondition {
  final int id;
  final String main;
  final String description;
  final String icon;

  WeatherCondition({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  factory WeatherCondition.fromJson(Map<String, dynamic> json) {
    return WeatherCondition(
      id: json['id'],
      main: json['main'],
      description: json['description'],
      icon: json['icon'],
    );
  }

  String getImageAsset() {
    switch (main.toLowerCase()) {
      case 'clear':
        return 'lib/Assets/images/sun.png';
      case 'clouds':
        return 'lib/Assets/images/clouds.png';
      case 'rain':
        return 'lib/Assets/images/rainy.png';
      case 'snow':
        return 'lib/Assets/images/clouds-snow.png';
      default:
        return 'lib/Assets/images/sun-clouds-rain.png';
    }
  }
}
