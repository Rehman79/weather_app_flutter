class CurrentWeather {
  final double temperature;
  final double feelsLike;
  final double pressure;
  final int humidity;
  final double dewPoint;
  final int clouds;
  final double uvi;
  final double visibility;
  final double windSpeed;
  final double? windGust;
  final int windDeg;
  final double? rain;
  final double? snow;
  final WeatherCondition weather;

  CurrentWeather({
    required this.temperature,
    required this.feelsLike,
    required this.pressure,
    required this.humidity,
    required this.dewPoint,
    required this.clouds,
    required this.uvi,
    required this.visibility,
    required this.windSpeed,
    this.windGust,
    required this.windDeg,
    this.rain,
    this.snow,
    required this.weather,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    return CurrentWeather(
      temperature: json['temp'].toDouble(),
      feelsLike: json['feels_like'].toDouble(),
      pressure: json['pressure'].toDouble(),
      humidity: json['humidity'],
      dewPoint: json['dew_point'].toDouble(),
      clouds: json['clouds'],
      uvi: json['uvi'].toDouble(),
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
}
