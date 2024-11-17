import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/weatherresponce_model.dart';

class WeatherService {
  final String apiKey = 'your_key';

  Future<WeatherResponse> fetchWeather(double latitude, double longitude) async {
    final url = "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric";

    try {
      final response = await http.get(Uri.parse(url));

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return WeatherResponse.fromJson(data);
      } else {
        throw Exception('Failed to load weather data: ${response.statusCode} - ${response.body}');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to load weather data: $e');
    }
  }
}
