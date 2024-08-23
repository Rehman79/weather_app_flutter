import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_flutter/services/location_service.dart';
import 'package:weather_app_flutter/utils/bg_cont.dart';
import 'package:weather_app_flutter/utils/custom_text.dart';
import 'package:weather_app_flutter/utils/int_dt.dart';
import 'package:weather_app_flutter/viewmodels/weather_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LocationService locationservice=LocationService();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<WeatherViewModel>(context, listen: false).fetchWeatherForCurrentLocation();
    });
  }

  @override
  Widget build(BuildContext context) {
    final weatherViewModel = Provider.of<WeatherViewModel>(context);

    return SafeArea(
      child: BgCont(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (weatherViewModel.isLoading)
                Center(child: CircularProgressIndicator())
              else if (weatherViewModel.weather != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        CustomText(
                          content: weatherViewModel.weather!.currentWeather.temperature.toStringAsFixed(1),
                          fontWeight: FontWeight.w700,
                          fontSize: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Row(
                            children: [
                              CustomText(content: '°', fontSize: 30),
                              CustomText(content: 'C', fontSize: 30),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_pin, color: Colors.blue),
                        SizedBox(width: 8),
                        CustomText(
                          content: '${locationservice.getLocationName()}',
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    CustomText(
                      content: 'Feels like ${weatherViewModel.weather!.currentWeather.feelsLike.toStringAsFixed(1)}°C',
                      fontSize: 16,
                    ),
                    CustomText(
                      content: '${IntDt.fetchCurrentDay()}, ${IntDt.fetchCurrentTime()}',
                      fontSize: 16,
                    ),
                    SizedBox(height: 20),
                  ],
                )
              else if (weatherViewModel.errorMessage != null)
                  CustomText(
                    content: weatherViewModel.errorMessage!,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )
                else
                  CustomText(
                    content: 'No weather data available',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
