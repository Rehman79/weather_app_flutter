import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/weatherresponce_model.dart';

class WeatherService {
  final String apiKey = '5606bf9f2fda581f4aeb9127524ec4c7';
  final String baseUrl = 'https://api.openweathermap.org/data/3.0/onecall';

  Future<WeatherResponse> fetchWeather(double lat, double lon) async {
    final url = '$baseUrl?lat=$lat&lon=$lon&exclude=minutely&appid=$apiKey&units=metric';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return WeatherResponse.fromJson(data);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
