import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app_flutter/services/weather_service.dart';
import '../models/weatherresponce_model.dart';

class WeatherViewModel with ChangeNotifier {
  final WeatherService _weatherService = WeatherService();
  WeatherResponse? _weatherResponse;
  bool _isLoading = false;
  String? _errorMessage;

  WeatherResponse? get weather => _weatherResponse;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  Future<void> fetchWeatherForCurrentLocation() async {
    _isLoading = true;
    notifyListeners();

    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      _weatherResponse = await _weatherService.fetchWeather(position.latitude, position.longitude);
    } catch (e) {
      _errorMessage = 'Failed to fetch weather data: $e';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
