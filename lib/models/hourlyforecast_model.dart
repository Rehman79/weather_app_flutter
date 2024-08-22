import 'Currentweather_model.dart';

class HourlyForecast {
  final int dt;
  final double temperature;
  final double feelsLike;
  final double pressure;
  final int humidity;
  final double dewPoint;
  final double uvi;
  final int clouds;
  final double visibility;
  final double windSpeed;
  final double? windGust;
  final int windDeg;
  final double? rain;
  final double? snow;
  final WeatherCondition weather;

  HourlyForecast({
    required this.dt,
    required this.temperature,
    required this.feelsLike,
    required this.pressure,
    required this.humidity,
    required this.dewPoint,
    required this.uvi,
    required this.clouds,
    required this.visibility,
    required this.windSpeed,
    this.windGust,
    required this.windDeg,
    this.rain,
    this.snow,
    required this.weather,
  });

  factory HourlyForecast.fromJson(Map<String, dynamic> json) {
    return HourlyForecast(
      dt: json['dt'],
      temperature: json['temp'].toDouble(),
      feelsLike: json['feels_like'].toDouble(),
      pressure: json['pressure'].toDouble(),
      humidity: json['humidity'],
      dewPoint: json['dew_point'].toDouble(),
      uvi: json['uvi'].toDouble(),
      clouds: json['clouds'],
      visibility: json['visibility'].toDouble(),
      windSpeed: json['wind_speed'].toDouble(),
      windGust: json['wind_gust']?.toDouble(),
      windDeg: json['wind_deg'],
      rain: json['rain']?['1h']?.toDouble(),
      snow: json['snow']?['1h']?.toDouble(),
      weather: WeatherCondition.fromJson(json['weather'][0]),
    );
  }
}
