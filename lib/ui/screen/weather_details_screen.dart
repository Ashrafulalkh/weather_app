import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/ui/widgets/background_widgets.dart';
import 'package:weather_app/ui/widgets/hourly_forecast_listview_widgets.dart';
import 'package:weather_app/ui/widgets/weather_information_widgets.dart';

class WeatherDetailsScreen extends StatefulWidget {
  const WeatherDetailsScreen({super.key});

  @override
  State<WeatherDetailsScreen> createState() => _WeatherDetailsScreenState();
}

class _WeatherDetailsScreenState extends State<WeatherDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundWidgets(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.53,
                    width: MediaQuery.of(context).size.width * 1.0,
                    child: Lottie.asset('assets/animations/night.json',fit: BoxFit.cover),
                  ),
                  _buildTopMainWeatherInformation(),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.black.withOpacity(0.5),
                  ),
                  child: const HourlyForecastListview(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.black.withOpacity(0.5),
                  ),
                  child: SingleChildScrollView(
                    child: _buildBottomDetailsWeatherInformation(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomDetailsWeatherInformation() {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            WeatherInformationsWidgets(
                icon: Icons.sunny, title: 'UV', details: '0 weak'),
            WeatherInformationsWidgets(
                icon: Icons.thermostat_auto_rounded,
                title: 'Feels like',
                details: '34'),
            WeatherInformationsWidgets(
                icon: Icons.water_drop, title: 'Humidity', details: '84%'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            WeatherInformationsWidgets(
                icon: Icons.air, title: 'SE Wind', details: '0 weak'),
            WeatherInformationsWidgets(
                icon: Icons.air_rounded, title: 'Air Pressure', details: '34'),
            WeatherInformationsWidgets(
                icon: Icons.visibility, title: 'Visibility', details: '84%'),
          ],
        ),
      ],
    );
  }

  Widget _buildTopMainWeatherInformation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: Text(
                DateTime.now().toString(),
                style: GoogleFonts.lato(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '22°C',
                    style: GoogleFonts.lato(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Real feel 18°C',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              // Column(
              //   children: [
              //     const Icon(Icons.location_on, color: Colors.green),
              //     Text(
              //       'Irkutsk',
              //       style: GoogleFonts.lato(
              //         fontSize: 18,
              //         color: Colors.red,
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        )
      ],
    );
  }
}
