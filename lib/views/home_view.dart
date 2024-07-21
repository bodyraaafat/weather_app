import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/getweathercubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/getweathercubit/getweatherstates.dart';

import 'package:weather_app/widgets/nobodyscreen.dart';
import 'package:weather_app/widgets/weather_info.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetWeatherCubit, WeatherStates>(
          builder: (context, state) {
        if (state is WeatherInitialState) {
          return const NobodyScreen();
        } else if (state is WeatherLoadedState) {
          return const Weatherinfo();
        } else {
          return const Text("oops there was error");
        }
      }),
    );
  }
}
