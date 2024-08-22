import 'Currentweather_model.dart';
import 'dailyforecast_model.dart';
import 'hourlyforecast_model.dart';

class WeatherResponse {
  final CurrentWeather current;
  final List<HourlyForecast> hourly;
  final List<DailyForecast> daily;

  WeatherResponse({
    required this.current,
    required this.hourly,
    required this.daily,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    var hourlyList = (json['hourly'] as List<dynamic>)
        .map((data) => HourlyForecast.fromJson(data as Map<String, dynamic>))
        .toList();

    var dailyList = (json['daily'] as List<dynamic>)
        .map((data) => DailyForecast.fromJson(data as Map<String, dynamic>))
        .toList();

    return WeatherResponse(
      current: CurrentWeather.fromJson(json['current'] as Map<String, dynamic>),
      hourly: hourlyList,
      daily: dailyList,
    );
  }
}
