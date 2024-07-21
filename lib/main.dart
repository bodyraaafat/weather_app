import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/getweathercubit/get_weather_cubit.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.brown),
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}
