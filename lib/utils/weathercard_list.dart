import 'package:flutter/material.dart';
import 'package:weather_app_flutter/models/weatherresponce_model.dart';
import 'weather_card.dart';

class WeatherCardList extends StatelessWidget {
  final WeatherResponse? weatherResponse;

  const WeatherCardList({
    Key? key,
    this.weatherResponse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (weatherResponse == null) {
      return Center(child: Text("No weather data available"));
    }

    String temperature = '${weatherResponse!.currentWeather.temperature.toStringAsFixed(1)}°C';
    String weatherDescription = weatherResponse!.currentWeather.weather.description;
    String imageAsset = weatherResponse!.currentWeather.weather.getImageAsset();

    return WeatherCard(
      temperature: temperature,
      weatherDescription: weatherDescription,
      imageAsset: imageAsset,
    );
  }
}
