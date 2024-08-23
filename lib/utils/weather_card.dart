import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final String temperature;
  final String? minTemperature;
  final String? maxTemperature;
  final String weatherDescription;
  final String imageAsset;

  const WeatherCard({
    Key? key,
    required this.temperature,
    this.minTemperature,
    this.maxTemperature,
    required this.weatherDescription,
    required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(imageAsset, width: 50, height: 50),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  temperature,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                if (minTemperature != null && maxTemperature != null)
                  Text(
                    'Min: $minTemperature°C, Max: $maxTemperature°C',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                Text(
                  weatherDescription,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
