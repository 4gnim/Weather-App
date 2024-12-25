import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherapp/apps/home_screen.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Weather App',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
