import 'Currentweather_model.dart';

class DailyForecast {
  final int dt;
  final double sunrise;
  final double sunset;
  final double tempDay;
  final double tempNight;
  final double tempMin;
  final double tempMax;
  final double feelsLikeDay;
  final double feelsLikeNight;
  final double pressure;
  final int humidity;
  final double dewPoint;
  final double windSpeed;
  final double? windGust;
  final int windDeg;
  final int clouds;
  final double uvi;
  final double pop;
  final double? rain;
  final double? snow;
  final WeatherCondition weather;

  DailyForecast({
    required this.dt,
    required this.sunrise,
    required this.sunset,
    required this.tempDay,
    required this.tempNight,
    required this.tempMin,
    required this.tempMax,
    required this.feelsLikeDay,
    required this.feelsLikeNight,
    required this.pressure,
    required this.humidity,
    required this.dewPoint,
    required this.windSpeed,
    this.windGust,
    required this.windDeg,
    required this.clouds,
    required this.uvi,
    required this.pop,
    this.rain,
    this.snow,
    required this.weather,
  });

  factory DailyForecast.fromJson(Map<String, dynamic> json) {
    return DailyForecast(
      dt: json['dt'],
      sunrise: json['sunrise'].toDouble(),
      sunset: json['sunset'].toDouble(),
      tempDay: json['temp']['day'].toDouble(),
      tempNight: json['temp']['night'].toDouble(),
      tempMin: json['temp']['min'].toDouble(),
      tempMax: json['temp']['max'].toDouble(),
      feelsLikeDay: json['feels_like']['day'].toDouble(),
      feelsLikeNight: json['feels_like']['night'].toDouble(),
      pressure: json['pressure'].toDouble(),
      humidity: json['humidity'],
      dewPoint: json['dew_point'].toDouble(),
      windSpeed: json['wind_speed'].toDouble(),
      windGust: json['wind_gust']?.toDouble(),
      windDeg: json['wind_deg'],
      clouds: json['clouds'],
      uvi: json['uvi'].toDouble(),
      pop: json['pop'].toDouble(),
      rain: json['rain']?.toDouble(),
      snow: json['snow']?.toDouble(),
      weather: WeatherCondition.fromJson(json['weather'][0]),
    );
  }
}
