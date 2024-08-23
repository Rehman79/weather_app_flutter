import 'Currentweather_model.dart';

class WeatherResponse {
  final CurrentWeather currentWeather;

  WeatherResponse({
    required this.currentWeather,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    return WeatherResponse(
      currentWeather: CurrentWeather.fromJson(json),
    );
  }
}
